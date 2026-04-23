/**
 * VitalMind — Stress Prediction Utility
 * Calls the Flask ML API backend and returns stress prediction + AI schedule.
 * Falls back to a rule-based JS prediction if the backend is unavailable.
 */

const ML_API_URL = "http://localhost:5000/predict";

// ─── MAP FORM DATA TO API FORMAT ────────────────────────────────────────────
function mapFormDataToAPIInput(formData) {
  return {
    heart_rate:    parseFloat(formData.pulse    || formData.heart_rate   || 72),
    systolic_bp:   parseFloat(formData.bpSys    || formData.systolic_bp  || 120),
    diastolic_bp:  parseFloat(formData.bpDia    || formData.diastolic_bp || 80),
    temperature:   parseFloat(formData.temp     || formData.temperature  || 36.8),
    sleep_hours:   parseFloat(formData.sleepHours || formData.sleep_hours || 7),
    workout_hours: parseFloat(formData.exerciseTime || formData.workout_hours || 0),
  };
}

// ─── JAVASCRIPT FALLBACK (mirrors predict.py logic) ─────────────────────────
function jsFallbackPredict(data) {
  const {
    heart_rate, systolic_bp, diastolic_bp, temperature, sleep_hours, workout_hours
  } = data;

  // Feature engineering
  const pulse_pressure = systolic_bp - diastolic_bp;
  const map_val        = diastolic_bp + pulse_pressure / 3;
  const sleep_deficit  = 7 - sleep_hours;
  const temp_deviation = Math.abs(temperature - 36.8);
  const hr_sleep_ratio = heart_rate / (sleep_hours + 1);
  const bp_ratio       = systolic_bp / (diastolic_bp || 1);

  // Simple scoring (mirrors ml_model.py auto_label)
  let score = 0;
  if (heart_rate > 100)     score += 2;
  else if (heart_rate > 85) score += 1;

  if (systolic_bp > 140)     score += 2;
  else if (systolic_bp > 130) score += 1;

  if (diastolic_bp > 90)    score += 2;
  else if (diastolic_bp > 85) score += 1;

  if (sleep_hours < 5)       score += 2;
  else if (sleep_hours < 6.5) score += 1;

  if (temperature > 37.5)   score += 1;

  const stress_index = score >= 5 ? 2 : score >= 2 ? 1 : 0;
  const stress_level = ["Low", "Medium", "High"][stress_index];

  // Fake confidence based on score
  const confidence = {
    low:    stress_index === 0 ? 0.8 : 0.1,
    medium: stress_index === 1 ? 0.7 : 0.15,
    high:   stress_index === 2 ? 0.8 : 0.1,
  };

  const ai_schedule = generateJSSchedule(stress_index, sleep_hours);

  return { stress_level, stress_index, confidence, ai_schedule, source: "js-fallback" };
}

function generateJSSchedule(stressIndex, sleepHours) {
  const schedules = {
    0: [
      { time: "06:00 AM", task: "Morning Run / Cardio (30 min)", type: "exercise", icon: "🏃" },
      { time: "07:00 AM", task: "High-Protein Breakfast", type: "nutrition", icon: "🥣" },
      { time: "09:00 AM", task: "Deep Work / Focus Session (3 hrs)", type: "work", icon: "💻" },
      { time: "12:30 PM", task: "Balanced Lunch + Short Walk", type: "nutrition", icon: "🥗" },
      { time: "02:00 PM", task: "Creative / Learning Block (2 hrs)", type: "work", icon: "📚" },
      { time: "05:00 PM", task: "Gym / Strength Training (45 min)", type: "exercise", icon: "💪" },
      { time: "07:30 PM", task: "Light Dinner", type: "nutrition", icon: "🍲" },
      { time: "10:00 PM", task: "Wind Down & Sleep", type: "sleep", icon: "😴" },
    ],
    1: [
      { time: "06:30 AM", task: "Yoga / Stretching (20 min)", type: "exercise", icon: "🧘" },
      { time: "07:30 AM", task: "Nutritious Breakfast", type: "nutrition", icon: "🥐" },
      { time: "09:00 AM", task: "Focused Work Block (2 hrs)", type: "work", icon: "💻" },
      { time: "11:00 AM", task: "Short Break + Hydration", type: "break", icon: "💧" },
      { time: "01:00 PM", task: "Light Lunch", type: "nutrition", icon: "🥗" },
      { time: "04:00 PM", task: "Brisk Walk (30 min)", type: "exercise", icon: "🚶" },
      { time: "06:30 PM", task: "Relaxing Hobby / Social Time", type: "break", icon: "🎨" },
      { time: "10:00 PM", task: "Meditation (10 min) + Sleep", type: "sleep", icon: "😴" },
    ],
    2: [
      { time: "07:00 AM", task: "Gentle Wake-Up + Deep Breathing (10 min)", type: "break", icon: "🌅" },
      { time: "07:30 AM", task: "Light Breakfast (No Caffeine)", type: "nutrition", icon: "🍌" },
      { time: "08:30 AM", task: "Anulom-Vilom / Pranayama (15 min)", type: "exercise", icon: "🧘" },
      { time: "10:00 AM", task: "Light Work — Only Priority Tasks", type: "work", icon: "📋" },
      { time: "12:30 PM", task: "Nutritious Lunch + 20 min Rest", type: "nutrition", icon: "🥗" },
      { time: "02:00 PM", task: "Short Walk in Nature (20 min)", type: "exercise", icon: "🌿" },
      { time: "04:00 PM", task: "Digital Detox — No Screens", type: "break", icon: "📵" },
      { time: "07:30 PM", task: "Light Dinner — Avoid Heavy Meals", type: "nutrition", icon: "🍵" },
      { time: "09:00 PM", task: "Guided Meditation / Sleep by 9:30 PM", type: "sleep", icon: "😴" },
    ],
  };

  let schedule = [...(schedules[stressIndex] || schedules[1])];

  if (sleepHours < 5) {
    schedule = schedule.filter(item => item.type !== "exercise");
    schedule.unshift({ time: "07:00 AM", task: "Extra Rest Recommended — Slow Start", type: "sleep", icon: "💤" });
  }

  return schedule;
}

// ─── MAIN EXPORT ─────────────────────────────────────────────────────────────
/**
 * Predict stress and get AI schedule.
 * Tries Flask backend first, falls back to JS rule engine.
 *
 * @param {Object} formData - Raw form data from DataForm.jsx
 * @returns {Promise<Object>} { stress_level, stress_index, confidence, ai_schedule, source }
 */
export async function predictStress(formData) {
  const apiInput = mapFormDataToAPIInput(formData);

  try {
    const controller = new AbortController();
    const timeout = setTimeout(() => controller.abort(), 3000); // 3s timeout

    const response = await fetch(ML_API_URL, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(apiInput),
      signal: controller.signal,
    });

    clearTimeout(timeout);

    if (!response.ok) throw new Error(`API error: ${response.status}`);

    const result = await response.json();
    return { ...result, source: "ml-model" };

  } catch (err) {
    console.warn("⚠️ ML API unavailable, using JS fallback:", err.message);
    return jsFallbackPredict(apiInput);
  }
}
