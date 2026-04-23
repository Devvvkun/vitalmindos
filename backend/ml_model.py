import sys
import io
sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8', errors='replace')

import sqlite3
import numpy as np
import joblib
import os
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import classification_report, accuracy_score

# ─── PATHS ──────────────────────────────────────────────────────────────────
BASE_DIR   = os.path.dirname(os.path.abspath(__file__))
ROOT_DIR   = os.path.join(BASE_DIR, "..")
DB_PATH    = r"health.db"
MODEL_DIR  = os.path.abspath(os.path.join(ROOT_DIR, "frontend", "dist", "models"))
MODEL_PATH = os.path.join(MODEL_DIR, "stress_model.pkl")
SCALER_PATH = os.path.join(MODEL_DIR, "scaler.pkl")

os.makedirs(MODEL_DIR, exist_ok=True)

# ─── FEATURE ENGINEERING ────────────────────────────────────────────────────
def build_features(row):
    heart_rate, systolic_bp, diastolic_bp, temperature, sleep_hours, workout_hours, study_hours = row

    temperature   = temperature   if temperature   else 36.8
    sleep_hours   = sleep_hours   if sleep_hours   else 7.0
    workout_hours = workout_hours if workout_hours else 0.0
    study_hours   = study_hours   if study_hours   else 0.0

    pulse_pressure  = systolic_bp - diastolic_bp
    map_val         = diastolic_bp + (pulse_pressure / 3)
    sleep_deficit   = 7 - sleep_hours
    temp_deviation  = abs(temperature - 36.8)
    hr_sleep_ratio  = heart_rate / (sleep_hours + 1)
    bp_ratio        = systolic_bp / (diastolic_bp if diastolic_bp != 0 else 1)

    return [
        heart_rate, systolic_bp, diastolic_bp, temperature, sleep_hours,
        pulse_pressure, map_val, sleep_deficit, temp_deviation,
        hr_sleep_ratio, bp_ratio
    ]

def auto_label(row):
    heart_rate, systolic_bp, diastolic_bp, temperature, sleep_hours, workout_hours, study_hours = row

    score = 0
    if heart_rate > 100:       score += 2
    elif heart_rate > 85:      score += 1

    if systolic_bp > 140:      score += 2
    elif systolic_bp > 130:    score += 1

    if diastolic_bp > 90:      score += 2
    elif diastolic_bp > 85:    score += 1

    if sleep_hours < 5:        score += 2
    elif sleep_hours < 6.5:    score += 1

    if temperature and temperature > 37.5:  score += 1

    if score >= 5:   return 2  # High
    elif score >= 2: return 1  # Medium
    else:            return 0  # Low

def train_model():
    print(f"📂 Loading data from: {DB_PATH}")

    # ─── LOAD DATA ──────────────────────────────────────────────────────────────
    conn = sqlite3.connect(DB_PATH)
    cur  = conn.cursor()

    cur.execute("""
        SELECT heart_rate, systolic_bp, diastolic_bp, temperature, sleep_hours,
               workout_hours, study_hours
        FROM daily_logs
        WHERE heart_rate IS NOT NULL
          AND systolic_bp IS NOT NULL
          AND diastolic_bp IS NOT NULL
          AND sleep_hours IS NOT NULL
    """)
    rows = cur.fetchall()
    conn.close()

    print(f"✅ Loaded {len(rows)} records from health.db")

    if len(rows) < 10:
        raise RuntimeError("❌ Not enough data in health.db to train a model. Add more logs first.")

    X = np.array([build_features(r) for r in rows])
    y = np.array([auto_label(r) for r in rows])

    print(f"📊 Label distribution — Low: {(y==0).sum()}, Medium: {(y==1).sum()}, High: {(y==2).sum()}")

    # ─── TRAIN / TEST SPLIT ─────────────────────────────────────────────────────
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42, stratify=y)

    # ─── SCALE ──────────────────────────────────────────────────────────────────
    scaler = StandardScaler()
    X_train_scaled = scaler.fit_transform(X_train)
    X_test_scaled  = scaler.transform(X_test)

    # ─── TRAIN MODEL ────────────────────────────────────────────────────────────
    print("🤖 Training RandomForest model...")
    model = RandomForestClassifier(
        n_estimators=200,
        max_depth=10,
        random_state=42,
        class_weight="balanced"
    )
    model.fit(X_train_scaled, y_train)

    # ─── EVALUATE ───────────────────────────────────────────────────────────────
    y_pred = model.predict(X_test_scaled)
    acc = accuracy_score(y_test, y_pred)
    print(f"\n✅ Accuracy: {acc:.2%}")
    print("\nClassification Report:")
    print(classification_report(y_test, y_pred, target_names=["Low", "Medium", "High"]))

    # ─── SAVE ───────────────────────────────────────────────────────────────────
    joblib.dump(model, MODEL_PATH)
    joblib.dump(scaler, SCALER_PATH)

    print(f"\n💾 Model saved  → {MODEL_PATH}")
    print(f"💾 Scaler saved → {SCALER_PATH}")
    print("\n🎉 Training complete!")
    
    return {"accuracy": acc, "records": len(rows)}

if __name__ == "__main__":
    train_model()
