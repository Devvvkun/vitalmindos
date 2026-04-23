import React, { useEffect, useState, useRef } from 'react';
import { Line } from 'react-chartjs-2';
import {
  Chart as ChartJS, CategoryScale, LinearScale, PointElement,
  LineElement, Title, Tooltip, Legend, Filler
} from 'chart.js';
import { Sun, Moon, Activity, Heart, BrainCircuit, Droplets, Flame, Footprints, FileText, Download, Plus, Loader2, X, TrendingUp, AlertTriangle, Upload, Zap, Shield, Clock } from 'lucide-react';
import html2canvas from 'html2canvas';
import jsPDF from 'jspdf';
import ChatBot from '../components/ChatBot';
import { predictStress } from '../utils/stressPredictor';
import './Dashboard.css';


ChartJS.register(CategoryScale, LinearScale, PointElement, LineElement, Title, Tooltip, Legend, Filler);

// Reusable Circular Progress SVG Component
const CircularProgress = ({ value, max, size = 100, strokeWidth = 8, color = "#2ECC71", icon, suffix = "" }) => {
  const radius = (size - strokeWidth) / 2;
  const circumference = radius * 2 * Math.PI;
  const percent = Math.min(value / max, 1);
  const offset = circumference - percent * circumference;

  return (
    <div className="health-score-container" style={{ width: size, height: size }}>
      <svg className="health-score-svg">
        <circle className="health-score-circle-bg" cx={size / 2} cy={size / 2} r={radius} />
        <circle
          className="health-score-circle"
          cx={size / 2} cy={size / 2} r={radius}
          style={{ strokeDasharray: circumference, strokeDashoffset: offset, stroke: color }}
        />
      </svg>
      <div className="health-score-text">
        {icon ? icon : (
          <>
            <span className="health-score-number">{value}</span>
            {suffix && <span className="text-xs text-secondary">{suffix}</span>}
          </>
        )}
      </div>
    </div>
  );
};

const Dashboard = () => {
  const [data, setData] = useState(null);
  const chartRef = useRef(null);
  const dashboardRef = useRef(null);
  const [showAI, setShowAI] = useState(true);
  const [water, setWater] = useState(2000); // in ml
  const [isDownloading, setIsDownloading] = useState(false);

  // Analytics Modal States
  const [showAnalyticsModal, setShowAnalyticsModal] = useState(false);
  const [isAnalyzing, setIsAnalyzing] = useState(false);

  const [selfSchedule, setSelfSchedule] = useState([
    { activity: 'Deep Work', timeSlot: '10:00 AM - 2:00 PM', energyDrain: 'High' },
    { activity: 'Workout', timeSlot: '6:00 PM - 7:30 PM', energyDrain: 'Medium' },
    { activity: 'Screen Time', timeSlot: '9:00 PM - 11:00 PM', energyDrain: 'High' }
  ]);

  // ML Stress Prediction State
  const [stressData, setStressData] = useState(null);
  const [isMLLoading, setIsMLLoading] = useState(false);

  // Dynamic AI Schedule from ML model
  const [aiSchedule, setAiSchedule] = useState([]);

  const [chartValues, setChartValues] = useState([70, 85, 40, 90, 80, 50, 60]);

  useEffect(() => {
    const saved = localStorage.getItem('vitalMindData');
    const savedUser = localStorage.getItem('vitalMindUser');
    
    let currentData;
    
    if (saved) {
      currentData = JSON.parse(saved);
      // Ensure formData exists
      if (!currentData.formData) currentData.formData = {};
    } else {
      // Mock Data fallback
      currentData = {
        formData: { name: 'Aarav', pulse: 95, bpSys: 135, bpDia: 85, spo2: 97, sleepHours: 5.5 },
        healthScore: 68,
        steps: 6200,
        calories: 450,
        schedule: [
          { activity: 'Deep Work / Coding', baseline: '2 hrs', ai: '9:00 AM - 12:00 PM', improvement: 'Peak Focus' },
          { activity: 'Physical Movement', baseline: '0 hrs', ai: '5:00 PM - 5:45 PM', improvement: 'Mood Boost' },
          { activity: 'Digital Detox', baseline: 'None', ai: '10:00 PM Onwards', improvement: 'Better Sleep' }
        ]
      };
    }

    if (savedUser) {
      const userSession = JSON.parse(savedUser);
      if (userSession.name) {
        if (!currentData.formData) currentData.formData = {};
        currentData.formData.name = userSession.name;
      }
    }
    
    setData(currentData);

    // ── AUTO-RUN ML PREDICTION using stored profile + health data ──
    const runMLPrediction = async (formDataObj, userObj) => {
      // Check if we already have a fresh prediction (same day)
      const savedStress = localStorage.getItem('vitalMindStress');
      if (savedStress) {
        try {
          const parsed = JSON.parse(savedStress);
          const savedDate = parsed._date;
          const today = new Date().toDateString();
          if (savedDate === today) {
            // Use cached prediction
            setStressData(parsed);
            if (parsed.ai_schedule?.length > 0) setAiSchedule(parsed.ai_schedule);
            return;
          }
        } catch (_) {}
      }

      // Build input from stored data
      const input = {
        pulse:        formDataObj.pulse        || userObj?.pulse        || 72,
        bpSys:        formDataObj.bpSys        || userObj?.bpSys        || 120,
        bpDia:        formDataObj.bpDia        || userObj?.bpDia        || 80,
        temp:         formDataObj.temp         || userObj?.temp         || 36.8,
        sleepHours:   formDataObj.sleepHours   || userObj?.sleepHours   || 7,
        exerciseTime: formDataObj.exerciseTime || userObj?.exerciseTime || 0,
      };

      setIsMLLoading(true);
      try {
        const result = await predictStress(input);
        const withDate = { ...result, _date: new Date().toDateString() };
        localStorage.setItem('vitalMindStress', JSON.stringify(withDate));
        setStressData(withDate);
        if (result.ai_schedule?.length > 0) setAiSchedule(result.ai_schedule);
      } catch (e) {
        console.error('ML prediction failed on load:', e);
      } finally {
        setIsMLLoading(false);
      }
    };

    const userObj = savedUser ? JSON.parse(savedUser) : {};
    runMLPrediction(currentData.formData || {}, userObj);
  }, []);

  if (!data || !data.formData) return <div className="text-center mt-8">Loading Neural Engine...</div>;

  const { formData, healthScore = 68, schedule = [], steps = 0, calories = 0 } = data;

  // Logic
  const hour = new Date().getHours();
  const isMorning = hour >= 5 && hour < 17;
  const greeting = isMorning ? "Good Morning" : "Good Evening";
  const GreetingIcon = isMorning ? Sun : Moon;

  // Health Score Color Logic
  let scoreColor = "#2ECC71"; // Default Green
  if (healthScore >= 80) scoreColor = "#10b981"; // Emerald
  else if (healthScore < 50) scoreColor = "#ef4444"; // Red
  else scoreColor = "#f59e0b"; // Amber for medium (e.g. 68)

  // Abnormal Logic
  const isStressed = formData.sleepHours < 6 && formData.pulse > 90;

  // Chart Gradient
  const createGradient = (ctx, chartArea) => {
    const gradient = ctx.createLinearGradient(0, chartArea.top, 0, chartArea.bottom);
    gradient.addColorStop(0, 'rgba(46, 204, 113, 0.4)');
    gradient.addColorStop(1, 'rgba(46, 204, 113, 0.0)');
    return gradient;
  };

  const chartData = {
    labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
    datasets: [{
      label: 'Mood Level',
      data: chartValues,
      borderColor: '#2ECC71',
      backgroundColor: function (context) {
        const chart = context.chart;
        const { ctx, chartArea } = chart;
        if (!chartArea) return null;
        return createGradient(ctx, chartArea);
      },
      fill: true,
      tension: 0.4,
      pointBackgroundColor: '#2ECC71',
      pointBorderColor: '#fff',
    }]
  };

  const chartOptions = {
    responsive: true,
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 10
      }
    },
    plugins: { legend: { display: false } },
    scales: {
      x: { grid: { display: false }, offset: true },
      y: { grid: { color: 'rgba(255, 255, 255, 0.05)' }, beginAtZero: true, max: 100 }
    }
  };

  // Actions
  const handleAddWater = () => {
    if (water < 4000) setWater(w => w + 250);
  };

  const handleAnalyze = () => {
    setShowAnalyticsModal(true);
    setIsAnalyzing(true);
    // Simulate AI parsing pattern data
    setTimeout(() => {
      setIsAnalyzing(false);
    }, 1800);
  };

  const handleDownload = async () => {
    if (!data) return;
    setIsDownloading(true);

    try {
      // Create PDF in Portrait, millimeters, A4 size
      const pdf = new jsPDF('p', 'mm', 'a4');
      const pageWidth = pdf.internal.pageSize.getWidth();

      // 1. Header Section
      pdf.setFontSize(24);
      pdf.setTextColor(46, 204, 113); // VitalMind Green (#2ECC71)
      pdf.text('VitalMind Medical Report', 20, 25);

      pdf.setFontSize(10);
      pdf.setTextColor(100, 100, 100);
      pdf.text(`Report ID: VM-${Math.floor(1000 + Math.random() * 9000)} | Date: ${new Date().toLocaleDateString()}`, 20, 32);

      // Separator Line
      pdf.setDrawColor(200, 200, 200);
      pdf.line(20, 35, pageWidth - 20, 35);

      // 2. Patient & Health Score
      pdf.setFontSize(14);
      pdf.setTextColor(0, 0, 0);
      pdf.text('Patient Overview', 20, 45);

      pdf.setFontSize(11);
      pdf.text(`Patient Name: ${formData.name}`, 25, 53);
      pdf.text(`Current Health Score: ${healthScore}/100`, 25, 60);
      pdf.text(`Risk Assessment: ${healthScore > 80 ? 'Low' : healthScore > 50 ? 'Moderate' : 'High'}`, 25, 67);

      // 3. Vitals Section
      pdf.setFontSize(14);
      pdf.text('Current Vitals', 20, 80);

      // Draw a small light grey box for vitals
      pdf.setDrawColor(240, 240, 240);
      pdf.setFillColor(250, 250, 250);
      pdf.rect(20, 84, pageWidth - 40, 25, 'F');

      pdf.setFontSize(11);
      pdf.text(`Pulse Rate: ${formData.pulse} bpm`, 25, 92);
      pdf.text(`Blood Pressure: ${formData.bpSys}/${formData.bpDia} mmHg`, 25, 99);
      pdf.text(`Sleep Duration: ${formData.sleepHours} hours`, 100, 92);
      pdf.text(`Oxygen Saturation (SpO2): ${formData.spo2}%`, 100, 99);

      // 4. Mood History Chart
      pdf.setFontSize(14);
      pdf.text('Mood & Stability Analysis (7-Day Trend)', 20, 120);

      if (chartRef.current) {
        // Capture the chart as a high-quality image
        const chartCanvas = chartRef.current.canvas;
        const chartImage = chartCanvas.toDataURL('image/png', 1.0);
        // Add image (X, Y, Width, Height)
        pdf.addImage(chartImage, 'PNG', 20, 125, 170, 75);
      }

      // 5. AI Recommendations
      pdf.setFontSize(14);
      pdf.text('AI-Optimized Wellness Schedule', 20, 215);

      let yPos = 223;
      data.schedule.forEach((item, index) => {
        pdf.setFontSize(10);
        pdf.setTextColor(60, 60, 60);
        pdf.text(`${index + 1}. ${item.activity}: Recommended ${item.ai} (Impact: ${item.improvement})`, 25, yPos);
        yPos += 8;
      });

      // 6. Final AI Insight
      pdf.setFontSize(11);
      pdf.setTextColor(0, 0, 0);
      pdf.text('Clinical Observation:', 20, 255);
      pdf.setFontSize(10);
      pdf.setTextColor(80, 80, 80);
      const insightText = `Based on current vitals, patient shows ${formData.pulse > 90 ? 'elevated stress markers' : 'stable metrics'}. ${formData.sleepHours < 6 ? 'Significant sleep deficit detected.' : 'Sleep cycle is within healthy limits.'} Optimization requested.`;
      pdf.text(insightText, 25, 262, { maxWidth: 160 });

      // Footer
      pdf.setFontSize(8);
      pdf.setTextColor(150, 150, 150);
      pdf.text('THIS IS AN AI-GENERATED REPORT. IT IS NOT A DIAGNOSIS. PLEASE CONSULT A MEDICAL PROFESSIONAL.', pageWidth / 2, 285, { align: 'center' });

      // Save the PDF
      pdf.save(`VitalMind_Report_${formData.name}_${new Date().toLocaleDateString()}.pdf`);
    } catch (error) {
      console.error("PDF Generation Error:", error);
      alert("Failed to generate report. Please try again.");
    } finally {
      setIsDownloading(false);
    }
  };

  const handleDownloadCSV = () => {
    // Generate CSV from schedule and vitals data
    const headers = "Activity,Your Baseline,AI Recommended,Impact\n";
    const rows = data.schedule.map(item =>
      `"${item.activity}","${item.baseline}","${item.ai}","${item.improvement}"`
    ).join("\n");

    const vitalsSection = `\n\nDaily Vitals\nPulse (bpm),Systolic BP,Diastolic BP,Sleep Hours,SpO2\n${data.formData.pulse},${data.formData.bpSys},${data.formData.bpDia},${data.formData.sleepHours},${data.formData.spo2}\n`;

    const csvContent = headers + rows + vitalsSection;
    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const url = URL.createObjectURL(blob);
    const link = document.createElement("a");
    link.href = url;
    link.setAttribute("download", "VitalMind-Data.csv");
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    URL.revokeObjectURL(url);
  };

  const handleDownloadScheduleCSV = () => {
    let csvContent = "Activity,Self Time,Self Drain,AI Time,AI Impact\n";
    for (let i = 0; i < Math.max(selfSchedule.length, aiSchedule.length); i++) {
       const selfItem = selfSchedule[i] || { activity: '', timeSlot: '', energyDrain: '' };
       const aiItem = aiSchedule[i] || { ai: '', improvement: '' };
       csvContent += `"${selfItem.activity}","${selfItem.timeSlot}","${selfItem.energyDrain}","${aiItem.ai}","${aiItem.improvement}"\n`;
    }
    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const url = URL.createObjectURL(blob);
    const link = document.createElement("a");
    link.href = url;
    link.setAttribute("download", "VitalMind-Schedule.csv");
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
    URL.revokeObjectURL(url);
  };

  const handleFileUpload = (event) => {
    const file = event.target.files[0];
    if (!file) return;

    const reader = new FileReader();
    reader.onload = (e) => {
      const text = e.target.result;
      const lines = text.split('\n').filter(line => line.trim() !== '');
      if (lines.length < 2) return; 

      const newSelf = [];
      const newAI = [];

      for (let i = 1; i < lines.length; i++) {
        const row = lines[i].match(/(".*?"|[^",\s]+)(?=\s*,|\s*$)/g)?.map(s => s.replace(/(^"|"$)/g, '').trim()) || [];
        if (row.length >= 5) {
          newSelf.push({ activity: row[0], timeSlot: row[1], energyDrain: row[2] });
          newAI.push({ activity: row[0], ai: row[3], improvement: row[4] });
        }
      }

      if (newSelf.length > 0) {
        setSelfSchedule(newSelf);
        setAiSchedule(newAI);

        // Dynamic Graph Update
        let highDrains = newSelf.filter(item => item.energyDrain.toLowerCase() === 'high').length;
        setChartValues(prev => {
          const newVals = [...prev];
          if (highDrains > 1) {
            newVals[5] = 45;
            newVals[6] = 30; // Mood dips if too many high intensity tasks
          } else {
            newVals[5] = 70;
            newVals[6] = 95; // Mood rises if balanced or light tasks
          }
          return newVals;
        });
      }
    };
    reader.readAsText(file);
    // Reset file input so same file can be uploaded again if modified
    event.target.value = null;
  };

  return (
    <div className="dashboard-layout relative" ref={dashboardRef}>

      {/* Header Actions */}
      <div className="flex justify-between items-center mb-2">
        <h2 className="m-0 text-gradient">Neural Dashboard</h2>
        <div className="header-actions m-0" data-html2canvas-ignore="true">
          <button onClick={handleAnalyze} className="btn btn-primary flex items-center gap-2">
            <BrainCircuit size={18} /> Analyze Report
          </button>
          <button onClick={handleDownload} disabled={isDownloading} className="btn glass-panel flex items-center gap-2">
            {isDownloading ? <Loader2 size={18} className="animate-spin" /> : <Download size={18} />}
            {isDownloading ? 'Generating...' : 'Download PDF'}
          </button>
        </div>
      </div>

      {/* Row 1: Top Dashboard (Greeting + Vitals) */}
      <div className="top-row">
        <div className="glass-panel p-6 flex flex-col justify-center relative overflow-hidden">
          <div className="flex justify-between items-start">
            <div>
              <div className="flex items-center gap-2 mb-2">
                <GreetingIcon className="hover-breathe" size={28} color="#f59e0b" />
                <span className="text-xl font-bold text-secondary">{greeting}</span>
              </div>
              <h1 className="text-4xl font-bold mb-2">Welcome back, <span className="text-gradient">{formData.name}</span></h1>
              <p className="text-secondary">Here is your predictive health analysis for today.</p>
            </div>
            {/* Health Score Circular Ring */}
            <div className="text-center">
              <CircularProgress value={healthScore} max={100} color={scoreColor} />
              <p className="text-xs text-secondary mt-2 font-bold uppercase tracking-wider">Health Score</p>
            </div>
          </div>
        </div>

        <div className={`glass-panel p-6 flex flex-col justify-between ${isStressed ? 'abnormal-glow' : ''}`}>
          <div className="flex justify-between items-center mb-4">
            <h4 className="m-0 font-bold">Current Vitals</h4>
            <Heart className="hover-breathe" size={24} color="#ef4444" />
          </div>
          <div className="grid grid-cols-2 gap-4">
            <div>
              <p className="text-sm text-secondary">Pulse</p>
              <p className={`font-bold text-3xl ${formData.pulse > 90 ? 'abnormal-text' : 'text-gradient'}`}>
                {formData.pulse} <span className="text-sm">bpm</span>
              </p>
            </div>
            <div>
              <p className="text-sm text-secondary">Blood Pressure</p>
              <p className={`font-bold text-3xl ${formData.bpSys > 130 ? 'abnormal-text' : 'text-gradient'}`}>
                {formData.bpSys}/{formData.bpDia}
              </p>
            </div>
          </div>
        </div>
      </div>

      {/* Row 2: Middle Analytics */}
      <div className="middle-row">

        {/* Mood History & AI Summary */}
        <div className="glass-panel p-6 flex flex-col">
          <div className="flex justify-between items-center mb-4">
            <h3 className="m-0 font-bold">Mood History</h3>
            <Activity size={20} color="var(--accent-primary)" />
          </div>
          <div className="relative min-h-[150px]">
            <Line ref={chartRef} data={chartData} options={chartOptions} />
          </div>
          {isStressed && (
            <div className="ai-summary-badge warning">
              <h4 className="m-0 mb-1 flex items-center gap-2 abnormal-text">
                <BrainCircuit size={18} /> AI Insight
              </h4>
              <p className="m-0 text-sm">
                Stress level high hai. Pichle 2 din se sleep cycle disturbed hai ({formData.sleepHours} hrs avg). Ek 10-minute meditation session try karein?
              </p>
            </div>
          )}
        </div>

        {/* ML Output: Schedule & Prediction */}
        <div className="glass-panel p-6 flex flex-col">
          <div className="schedule-toggle-wrapper">
            <div className="schedule-toggle-slider" style={{ transform: showAI ? 'translateX(100%)' : 'translateX(0)' }}></div>
            <button className={`toggle-btn ${!showAI ? 'active' : ''}`} onClick={() => setShowAI(false)}>Self Schedule</button>
            <button className={`toggle-btn ${showAI ? 'active' : ''}`} onClick={() => setShowAI(true)}>AI Optimized ✨</button>
          </div>

          <div className="flex-1 overflow-auto mt-4">
            {showAI ? (
              <div className="animate-fadeIn">

                {/* ML Loading State */}
                {isMLLoading && (
                  <div className="ml-loading-state">
                    <Loader2 size={28} className="ml-spinner" color="var(--accent-primary)" />
                    <p className="m-0 text-sm text-secondary">Running ML model on your profile data...</p>
                  </div>
                )}

                {/* ML Result: Stress Level Card */}
                {!isMLLoading && stressData && (
                  <>
                    {/* Stress Badge Header */}
                    <div className={`stress-badge-card stress-${stressData.stress_level?.toLowerCase()}`}>
                      <div className="stress-header-row">
                        <div className="stress-badge-left">
                          <Zap size={16} />
                          <span className="stress-label">ML Stress Prediction</span>
                        </div>
                        <span className="stress-source">
                          {stressData.source === 'ml-model' ? '🤖 ML Model' : '⚡ JS Fallback'}
                        </span>
                      </div>

                      <div className="stress-main-row">
                        <div>
                          <span className="stress-value">{stressData.stress_level}</span>
                          <span className="stress-sublabel">Stress Level</span>
                        </div>
                        <div className="stress-confidence-bars">
                          {['low', 'medium', 'high'].map(level => (
                            <div key={level} className="conf-bar-row">
                              <span className="conf-label">{level.charAt(0).toUpperCase() + level.slice(1)}</span>
                              <div className="conf-bar-track">
                                <div
                                  className={`conf-bar-fill conf-${level}`}
                                  style={{ width: `${Math.round((stressData.confidence?.[level] || 0) * 100)}%` }}
                                />
                              </div>
                              <span className="conf-pct">{Math.round((stressData.confidence?.[level] || 0) * 100)}%</span>
                            </div>
                          ))}
                        </div>
                      </div>

                      {/* Profile Inputs Used */}
                      <div className="ml-inputs-row">
                        <span className="ml-input-chip"><Heart size={11}/> {formData.pulse || '—'} bpm</span>
                        <span className="ml-input-chip"><Activity size={11}/> {formData.bpSys || '—'}/{formData.bpDia || '—'}</span>
                        <span className="ml-input-chip"><Clock size={11}/> {formData.sleepHours || '—'} hrs sleep</span>
                        <span className="ml-input-chip"><Shield size={11}/> Temp {formData.temp || '36.8'}°C</span>
                      </div>
                    </div>

                    {/* AI Insights */}
                    <div className="ml-insights-strip">
                      {stressData.stress_level === 'High' && (
                        <>
                          <div className="insight-chip chip-danger"><AlertTriangle size={12}/> High BP + Low Sleep detected</div>
                          <div className="insight-chip chip-warning"><Zap size={12}/> Cortisol risk elevated</div>
                          <div className="insight-chip chip-info"><Shield size={12}/> Recovery mode scheduled</div>
                        </>
                      )}
                      {stressData.stress_level === 'Medium' && (
                        <>
                          <div className="insight-chip chip-warning"><Zap size={12}/> Moderate stress markers</div>
                          <div className="insight-chip chip-info"><Shield size={12}/> Balanced day recommended</div>
                          <div className="insight-chip chip-success"><TrendingUp size={12}/> Room for improvement</div>
                        </>
                      )}
                      {stressData.stress_level === 'Low' && (
                        <>
                          <div className="insight-chip chip-success"><TrendingUp size={12}/> Excellent vitals today!</div>
                          <div className="insight-chip chip-info"><Shield size={12}/> Peak performance window</div>
                          <div className="insight-chip chip-success"><Zap size={12}/> Maximize deep work now</div>
                        </>
                      )}
                    </div>

                    {/* AI-Generated Schedule */}
                    <p className="ml-schedule-heading">
                      <BrainCircuit size={14}/> AI Optimized Daily Schedule
                    </p>
                    <div className="ml-schedule-list">
                      {aiSchedule.map((item, idx) => (
                        <div key={idx} className={`ml-schedule-item`}>
                          <div className="schedule-icon-col">
                            <span className="schedule-emoji">{item.icon || '📋'}</span>
                          </div>
                          <div className="schedule-info-col">
                            <p className="schedule-task">{item.task || item.activity}</p>
                            <p className="schedule-time">{item.time || item.ai}</p>
                          </div>
                          <span className={`type-badge type-${item.type || 'work'}`}>
                            {item.type || 'task'}
                          </span>
                        </div>
                      ))}
                    </div>
                  </>
                )}

                {/* No data state */}
                {!isMLLoading && !stressData && (
                  <div className="ml-no-data">
                    <BrainCircuit size={36} color="var(--accent-primary)" className="opacity-40" />
                    <p className="text-sm text-secondary m-0">Complete your health form to get ML predictions.</p>
                  </div>
                )}
              </div>
            ) : (
              <div className="animate-fadeIn">
                <table className="before-after-table">
                  <thead>
                    <tr>
                      <th>Activity</th>
                      <th>Time Slot</th>
                      <th>Energy Drain</th>
                    </tr>
                  </thead>
                  <tbody>
                    {selfSchedule.map((item, idx) => (
                      <tr key={idx}>
                        <td className="font-bold">{item.activity}</td>
                        <td>{item.timeSlot}</td>
                        <td>
                          <span className={`drain-badge drain-${item.energyDrain.toLowerCase()}`}>
                            {item.energyDrain}
                          </span>
                        </td>
                      </tr>
                    ))}
                  </tbody>
                </table>
                
                {/* Smart Features */}
                <div className="smart-feature-box">
                  <h4 className="flex items-center gap-2 m-0 mb-2 text-[#3b82f6]">
                    <AlertTriangle size={16} /> Gap Analysis
                  </h4>
                  <p className="m-0 text-sm text-secondary">
                    Your schedule has 4 hours of high-intensity tasks back-to-back. Consider adding short breaks.
                  </p>
                </div>

                <div className="mt-4 flex justify-between items-center bg-[rgba(255,255,255,0.02)] p-3 rounded-lg border border-[rgba(255,255,255,0.05)]">
                  <div>
                    <h4 className="m-0 text-sm">Sleep Time</h4>
                    <p className="m-0 text-xs text-secondary">Manual Override</p>
                  </div>
                  <button className="btn glass-panel py-1 px-3 text-sm">
                    Set Time
                  </button>
                </div>
              </div>
            )}
          </div>

          <div className="flex gap-2 mt-4" data-html2canvas-ignore="true">
            <button 
              className="btn glass-panel text-xs flex items-center gap-2 flex-1 justify-center" 
              onClick={handleDownloadScheduleCSV}
            >
              <Download size={14} /> Download CSV
            </button>
            <label className="btn btn-primary text-xs flex items-center gap-2 flex-1 justify-center cursor-pointer m-0">
              <Upload size={14} /> Update via CSV
              <input type="file" accept=".csv" style={{ display: 'none' }} onChange={handleFileUpload} />
            </label>
          </div>

          {showAI && stressData?.stress_level === 'High' && (
            <div className="ai-summary-badge warning mt-4">
              <p className="m-0 text-sm">
                <strong className="text-[#ef4444]">Alert:</strong> High stress detected by ML model. Late night screen time + irregular sleep may be causing physiological strain.
              </p>
            </div>
          )}
        </div>
      </div>

      {/* Row 3: Footer Smartwatch Rings */}

      <div className="bottom-row">

        {/* Steps */}
        <div className="glass-panel p-4 flex items-center gap-4 justify-center">
          <CircularProgress value={steps} max={10000} size={70} strokeWidth={6} color="#3b82f6" icon={<Footprints size={24} color="#3b82f6" />} />
          <div>
            <p className="text-sm text-secondary m-0">Steps</p>
            <p className="text-xl font-bold m-0">{steps} <span className="text-xs text-secondary">/ 10k</span></p>
          </div>
        </div>

        {/* Calories */}
        <div className="glass-panel p-4 flex items-center gap-4 justify-center">
          <CircularProgress value={calories} max={2000} size={70} strokeWidth={6} color="#f59e0b" icon={<Flame size={24} color="#f59e0b" />} />
          <div>
            <p className="text-sm text-secondary m-0">Calories Burned</p>
            <p className="text-xl font-bold m-0">{calories} <span className="text-xs text-secondary">kcal</span></p>
          </div>
        </div>

        {/* Water */}
        <div className="glass-panel p-4 flex items-center gap-4 justify-center cursor-pointer hover:bg-white/5 transition-colors" onClick={handleAddWater} title="Click to add +250ml">
          <CircularProgress value={water} max={4000} size={70} strokeWidth={6} color="#0ea5e9" icon={<Droplets size={24} color="#0ea5e9" />} />
          <div>
            <p className="text-sm text-secondary m-0">Water (Click +250ml)</p>
            <p className="text-xl font-bold m-0">{water / 1000}L <span className="text-xs text-secondary">/ 4.0L</span></p>
          </div>
        </div>

      </div>

      {/* Quick Action FAB */}
      <button className="fab-quick-add" title="Quick Add" data-html2canvas-ignore="true">
        <Plus size={24} />
      </button>

      {/* Floating ChatBot Widget */}
      <div data-html2canvas-ignore="true">
        <ChatBot />
      </div>

      {/* Smart Analytics Modal */}
      {showAnalyticsModal && (
        <div className="modal-overlay" data-html2canvas-ignore="true">
          <div className="analytics-modal">
            <button className="modal-close-btn" onClick={() => setShowAnalyticsModal(false)}>
              <X size={24} />
            </button>

            {isAnalyzing ? (
              <div className="flex flex-col items-center justify-center py-8">
                <div className="bot-icon-wrapper speaking-pulse mb-4">
                  <BrainCircuit size={48} color="var(--accent-primary)" />
                </div>
                <h3 className="text-xl font-bold m-0 mb-2">Scanning Health Patterns...</h3>
                <p className="text-secondary text-sm">Running ML correlation analysis across 30 days of data.</p>
              </div>
            ) : (
              <div className="flex flex-col animate-fadeIn">
                <div className="flex items-center gap-3 mb-6">
                  <BrainCircuit size={32} color="var(--accent-primary)" />
                  <div>
                    <h2 className="text-2xl font-bold m-0">AI Analytics Report</h2>
                    <p className="text-secondary text-sm m-0">Generated from your recent CSV data</p>
                  </div>
                </div>

                <div className="flex flex-col gap-4">
                  <div className="glass-panel p-4 border border-[rgba(239,68,68,0.2)]">
                    <h4 className="flex items-center gap-2 m-0 mb-2 text-[#ef4444]">
                      <AlertTriangle size={18} /> Critical Trend Detected
                    </h4>
                    <p className="m-0 text-sm">
                      Aapka Blood Pressure aksar <strong>Wednesday</strong> ko high rehta hai (avg 135/85). Is this due to mid-week workload stress? Consider scheduling lighter tasks on Wednesdays.
                    </p>
                  </div>

                  <div className="glass-panel p-4">
                    <h4 className="flex items-center gap-2 m-0 mb-2 text-gradient">
                      <TrendingUp size={18} color="var(--accent-primary)" /> Positive Correlation
                    </h4>
                    <p className="m-0 text-sm">
                      When your sleep hits the AI Recommended <strong>7.5 hrs</strong>, your resting pulse drops by 8 bpm the following day. This is a massive improvement!
                    </p>
                  </div>
                </div>

                <div className="flex gap-4 mt-6 w-full">
                  <button
                    className="btn glass-panel flex-1 flex items-center justify-center gap-2"
                    onClick={handleDownloadCSV}
                  >
                    <Download size={18} /> Export Data (CSV)
                  </button>
                  <button
                    className="btn btn-primary flex-1"
                    onClick={() => setShowAnalyticsModal(false)}
                  >
                    Acknowledge
                  </button>
                </div>
              </div>
            )}
          </div>
        </div>
      )}

    </div>
  );
};

export default Dashboard;
