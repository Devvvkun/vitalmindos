export const generateInsights = (data) => {
  const insights = [];
  const schedule = [];

  // Parse numerical values
  const sleep = parseFloat(data.sleepHours);
  const spo2 = parseFloat(data.spo2);
  const bpSys = parseFloat(data.bpSys);
  const bpDia = parseFloat(data.bpDia);
  const weight = parseFloat(data.weight);
  
  // Rule 1: Sleep
  if (sleep < 6) {
    insights.push({ type: 'warning', text: 'Aapka sleep kam hai. Aim for at least 7-8 hours.' });
    schedule.push({ time: '22:00', task: 'Wind down, no screens', type: 'Sleep' });
  } else {
    insights.push({ type: 'good', text: 'Good sleep schedule maintained!' });
  }

  // Rule 2: SpO2
  if (spo2 < 95) {
    insights.push({ type: 'danger', text: 'SpO2 is low! Consider deep breathing exercises or consult a doctor.' });
    schedule.push({ time: '08:00', task: '15 mins Anulom Vilom (Breathing Exercise)', type: 'Yoga' });
  }

  // Rule 3: BP
  if (bpSys > 130 || bpDia > 85) {
    insights.push({ type: 'warning', text: 'BP is slightly high. Recommend low salt diet and mild yoga.' });
    schedule.push({ time: '07:00', task: 'Morning Yoga (30 min)', type: 'Yoga' });
  }

  // Rule 4: Weight & Exercise
  if (weight > 80 && data.exerciseTime < 0.5) {
    insights.push({ type: 'warning', text: 'Weight is high with low activity. Add 30 mins cardio daily.' });
    schedule.push({ time: '17:30', task: '30 mins Brisk Walking / Cardio', type: 'Cardio' });
  } else if (data.exerciseTime >= 0.5) {
    insights.push({ type: 'good', text: 'Great job staying active!' });
  }

  // Default Schedule items
  schedule.push({ time: '09:00', task: 'Healthy Breakfast', type: 'Diet' });
  schedule.push({ time: '13:00', task: 'Balanced Lunch', type: 'Diet' });
  
  // Sort schedule by time
  schedule.sort((a, b) => a.time.localeCompare(b.time));

  return { insights, schedule };
};
