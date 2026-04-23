"""
VitalMind Flask API — ML Stress Prediction Backend
Endpoints:
  POST /predict  - Predict stress level from biometric inputs
  GET  /health   - Health check
"""

from flask import Flask, request, jsonify
from flask_cors import CORS
import sqlite3
from predict import predict_stress
from ml_model import train_model

DB_PATH = r"health.db"

app = Flask(__name__)
CORS(app)  # Allow requests from Vite dev server (localhost:5173)


# ─── HEALTH CHECK ────────────────────────────────────────────────────────────
@app.route("/health", methods=["GET"])
def health():
    return jsonify({"status": "ok", "service": "VitalMind ML API v1.0"})


# ─── PREDICT STRESS ──────────────────────────────────────────────────────────
@app.route("/predict", methods=["POST"])
def predict():
    """
    Expected JSON body:
    {
        "heart_rate": 90,
        "systolic_bp": 130,
        "diastolic_bp": 85,
        "temperature": 36.8,
        "sleep_hours": 5.5,
        "workout_hours": 0.5   (optional)
    }

    Returns:
    {
        "stress_level": "High",
        "stress_index": 2,
        "confidence": { "low": 0.1, "medium": 0.2, "high": 0.7 },
        "ai_schedule": [ { "time": "...", "task": "...", "type": "...", "icon": "..." } ]
    }
    """
    try:
        body = request.get_json()

        if not body:
            return jsonify({"error": "No JSON body provided"}), 400

        # Validate required fields
        required = ["heart_rate", "systolic_bp", "diastolic_bp", "temperature", "sleep_hours"]
        missing = [f for f in required if f not in body]
        if missing:
            return jsonify({"error": f"Missing fields: {missing}"}), 400

        # Enforce numeric types
        data = {
            "heart_rate":    float(body["heart_rate"]),
            "systolic_bp":   float(body["systolic_bp"]),
            "diastolic_bp":  float(body["diastolic_bp"]),
            "temperature":   float(body["temperature"]),
            "sleep_hours":   float(body["sleep_hours"]),
            "workout_hours": float(body.get("workout_hours", 0))
        }

        result = predict_stress(data)
        return jsonify(result), 200

    except ValueError as e:
        return jsonify({"error": str(e)}), 400
    except RuntimeError as e:
        return jsonify({"error": str(e)}), 500
    except Exception as e:
        return jsonify({"error": f"Unexpected error: {e}"}), 500


# ─── SAVE HEALTH LOG ─────────────────────────────────────────────────────────
@app.route("/save_log", methods=["POST"])
def save_log():
    try:
        body = request.get_json()
        if not body:
            return jsonify({"error": "No JSON body provided"}), 400

        # Optional fields will be None if missing
        heart_rate   = float(body.get("pulse", 0)) or None
        systolic_bp  = float(body.get("bpSys", 0)) or None
        diastolic_bp = float(body.get("bpDia", 0)) or None
        temperature  = float(body.get("temp", 36.8)) or None
        sleep_hours  = float(body.get("sleepHours", 0)) or None
        workout_hours= float(body.get("exerciseTime", 0)) or None
        spo2         = float(body.get("spo2", 0)) or None

        conn = sqlite3.connect(DB_PATH)
        cur = conn.cursor()

        cur.execute("""
            INSERT INTO daily_logs 
            (user_id, heart_rate, systolic_bp, diastolic_bp, spo2, temperature, sleep_hours, workout_hours)
            VALUES (1, ?, ?, ?, ?, ?, ?, ?)
        """, (heart_rate, systolic_bp, diastolic_bp, spo2, temperature, sleep_hours, workout_hours))
        
        conn.commit()
        conn.close()
        
        return jsonify({"status": "success", "message": "Log saved to SQLite"}), 201

    except Exception as e:
        return jsonify({"error": f"Failed to save log: {e}"}), 500


# ─── RETRAIN MODEL ───────────────────────────────────────────────────────────
@app.route("/retrain", methods=["POST"])
def retrain():
    try:
        result = train_model()
        return jsonify({"status": "success", "message": "Model retrained", "details": result}), 200
    except Exception as e:
        return jsonify({"error": f"Failed to retrain model: {e}"}), 500


if __name__ == "__main__":
    print("🧠 VitalMind ML API starting on http://localhost:5000")
    print("   Model: stress_model.pkl  |  Scaler: scaler.pkl")
    app.run(host="0.0.0.0", port=5000, debug=True)
