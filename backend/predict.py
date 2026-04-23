import joblib
import numpy as np
import os

# ─── UPDATED PATHS to match project structure ───────────────────────────────
MODEL_PATH = os.path.join(os.path.dirname(__file__), "..", "frontend", "dist", "models", "stress_model.pkl")
SCALER_PATH = os.path.join(os.path.dirname(__file__), "..", "frontend", "dist", "models", "scaler.pkl")

MODEL_PATH = os.path.abspath(MODEL_PATH)
SCALER_PATH = os.path.abspath(SCALER_PATH)

# ─── LOAD MODEL + SCALER ────────────────────────────────────────────────────
try:
    model = joblib.load(MODEL_PATH)
    scaler = joblib.load(SCALER_PATH)
except Exception as e:
    raise RuntimeError(f"❌ Model or scaler not found at {MODEL_PATH}. Run ml_model.py first.") from e


# ─── FEATURE ENGINEERING ────────────────────────────────────────────────────
def create_features(data):
    try:
        pulse_pressure = data["systolic_bp"] - data["diastolic_bp"]
        map_val = data["diastolic_bp"] + (pulse_pressure / 3)

        sleep_deficit = 7 - data["sleep_hours"]
        temp_deviation = abs(data["temperature"] - 36.8)

        hr_sleep_ratio = data["heart_rate"] / (data["sleep_hours"] + 1)
        bp_ratio = data["systolic_bp"] / data["diastolic_bp"]

        return [
            data["heart_rate"],
            data["systolic_bp"],
            data["diastolic_bp"],
            data["temperature"],
            data["sleep_hours"],
            pulse_pressure,
            map_val,
            sleep_deficit,
            temp_deviation,
            hr_sleep_ratio,
            bp_ratio
        ]

    except KeyError as e:
        raise ValueError(f"Missing input field: {e}")


# ─── SCHEDULE GENERATOR ─────────────────────────────────────────────────────
def generate_ai_schedule(stress_index, sleep_hours, workout_hours):
    """
    Build a dynamic daily schedule based on predicted stress level.
    stress_index: 0 = Low, 1 = Medium, 2 = High
    """
    schedules = {
        0: [  # Low Stress → Productivity Mode
            {"time": "06:00 AM", "task": "Morning Run / Cardio (30 min)", "type": "exercise", "icon": "🏃"},
            {"time": "07:00 AM", "task": "High-Protein Breakfast", "type": "nutrition", "icon": "🥣"},
            {"time": "09:00 AM", "task": "Deep Work / Focus Session (3 hrs)", "type": "work", "icon": "💻"},
            {"time": "12:30 PM", "task": "Balanced Lunch + Short Walk", "type": "nutrition", "icon": "🥗"},
            {"time": "02:00 PM", "task": "Creative / Learning Block (2 hrs)", "type": "work", "icon": "📚"},
            {"time": "05:00 PM", "task": "Gym / Strength Training (45 min)", "type": "exercise", "icon": "💪"},
            {"time": "07:30 PM", "task": "Light Dinner", "type": "nutrition", "icon": "🍲"},
            {"time": "10:00 PM", "task": "Wind Down & Sleep", "type": "sleep", "icon": "😴"},
        ],
        1: [  # Medium Stress → Balanced Mode
            {"time": "06:30 AM", "task": "Yoga / Stretching (20 min)", "type": "exercise", "icon": "🧘"},
            {"time": "07:30 AM", "task": "Nutritious Breakfast", "type": "nutrition", "icon": "🥐"},
            {"time": "09:00 AM", "task": "Focused Work Block (2 hrs)", "type": "work", "icon": "💻"},
            {"time": "11:00 AM", "task": "Short Break + Hydration", "type": "break", "icon": "💧"},
            {"time": "01:00 PM", "task": "Light Lunch", "type": "nutrition", "icon": "🥗"},
            {"time": "02:00 PM", "task": "Work / Study Block (1.5 hrs)", "type": "work", "icon": "📝"},
            {"time": "04:00 PM", "task": "Brisk Walk (30 min)", "type": "exercise", "icon": "🚶"},
            {"time": "06:30 PM", "task": "Relaxing Hobby / Social Time", "type": "break", "icon": "🎨"},
            {"time": "08:00 PM", "task": "Light Dinner", "type": "nutrition", "icon": "🍲"},
            {"time": "10:00 PM", "task": "Meditation (10 min) + Sleep", "type": "sleep", "icon": "😴"},
        ],
        2: [  # High Stress → Recovery Mode
            {"time": "07:00 AM", "task": "Gentle Wake-Up + Deep Breathing (10 min)", "type": "break", "icon": "🌅"},
            {"time": "07:30 AM", "task": "Light Breakfast (No Caffeine)", "type": "nutrition", "icon": "🍌"},
            {"time": "08:30 AM", "task": "Anulom-Vilom / Pranayama (15 min)", "type": "exercise", "icon": "🧘"},
            {"time": "10:00 AM", "task": "Light Work — Only Priority Tasks", "type": "work", "icon": "📋"},
            {"time": "12:30 PM", "task": "Nutritious Lunch + 20 min Rest", "type": "nutrition", "icon": "🥗"},
            {"time": "02:00 PM", "task": "Short Walk in Nature (20 min)", "type": "exercise", "icon": "🌿"},
            {"time": "04:00 PM", "task": "Digital Detox — No Screens", "type": "break", "icon": "📵"},
            {"time": "06:00 PM", "task": "Light Stretching / Yoga (20 min)", "type": "exercise", "icon": "🧘"},
            {"time": "07:30 PM", "task": "Light Dinner — Avoid Heavy Meals", "type": "nutrition", "icon": "🍵"},
            {"time": "09:00 PM", "task": "Guided Meditation / Sleep by 9:30 PM", "type": "sleep", "icon": "😴"},
        ]
    }

    base = schedules.get(stress_index, schedules[1])

    # Personalize based on actual sleep hours
    if sleep_hours < 5:
        base = [item for item in base if item["type"] != "exercise"]
        base.insert(0, {"time": "07:00 AM", "task": "Extra Rest Recommended — Slow Start", "type": "sleep", "icon": "💤"})

    return base


# ─── PREDICTION ─────────────────────────────────────────────────────────────
def predict_stress(data):
    try:
        features = np.array(create_features(data)).reshape(1, -1)
        features_scaled = scaler.transform(features)

        prediction = model.predict(features_scaled)[0]
        probs = model.predict_proba(features_scaled)[0]

        stress_map = {0: "Low", 1: "Medium", 2: "High"}
        stress_index = int(prediction)

        ai_schedule = generate_ai_schedule(
            stress_index,
            data.get("sleep_hours", 7),
            data.get("workout_hours", 0)
        )

        return {
            "stress_level": stress_map[stress_index],
            "stress_index": stress_index,
            "confidence": {
                "low": float(probs[0]),
                "medium": float(probs[1]),
                "high": float(probs[2])
            },
            "ai_schedule": ai_schedule
        }

    except Exception as e:
        raise RuntimeError(f"Prediction failed: {e}")
