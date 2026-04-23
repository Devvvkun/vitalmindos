import React, { useState, useEffect, useRef } from 'react';
import { Line } from 'react-chartjs-2';
import {
  Chart as ChartJS, CategoryScale, LinearScale, PointElement,
  LineElement, Title, Tooltip, Legend, Filler
} from 'chart.js';
import { Thermometer, Droplets, Wind, Sun, Flame, Wifi, Database } from 'lucide-react';
import './Environment.css';

ChartJS.register(CategoryScale, LinearScale, PointElement, LineElement, Title, Tooltip, Legend, Filler);

// Reusable Circular Progress
const CircularProgress = ({ value, max, size = 150, strokeWidth = 12, color = "#2ECC71", icon, suffix = "" }) => {
  const radius = (size - strokeWidth) / 2;
  const circumference = radius * 2 * Math.PI;
  const percent = Math.min(value / max, 1);
  const offset = circumference - percent * circumference;

  return (
    <div className="gauge-container" style={{ width: size, height: size }}>
      <svg className="health-score-svg" style={{ transform: 'rotate(-90deg)', width: '100%', height: '100%' }}>
        <circle 
          fill="none" stroke="rgba(255, 255, 255, 0.1)" strokeWidth={strokeWidth}
          cx={size / 2} cy={size / 2} r={radius} 
        />
        <circle
          fill="none" strokeWidth={strokeWidth} strokeLinecap="round"
          cx={size / 2} cy={size / 2} r={radius}
          style={{ 
            strokeDasharray: circumference, strokeDashoffset: offset, 
            stroke: color, transition: 'stroke-dashoffset 1s ease-out, stroke 0.5s ease' 
          }}
        />
      </svg>
      <div className="health-score-text" style={{ position: 'absolute', display: 'flex', flexDirection: 'column', alignItems: 'center' }}>
        {icon && <div className="mb-1">{icon}</div>}
        <div>
          <span className="health-score-number" style={{ fontSize: '2rem', fontWeight: 800 }}>{value}</span>
          <span className="text-sm text-secondary ml-1">{suffix}</span>
        </div>
      </div>
    </div>
  );
};

const Environment = () => {
  // Sensor States
  const [temp, setTemp] = useState(28);
  const [humidity, setHumidity] = useState(55);
  const [aqi, setAqi] = useState(420); // ppm CO2
  const [light, setLight] = useState(65); // percentage
  const [rssi, setRssi] = useState(-60); // dBm
  
  // Historical data for chart (Last 10 polls)
  const [history, setHistory] = useState({
    labels: Array.from({length: 10}, (_, i) => `-${(10-i)*5}s`),
    tempData: Array(10).fill(28),
    humData: Array(10).fill(55)
  });

  const chartRef = useRef(null);

  // Simulated SQL Polling
  useEffect(() => {
    const pollData = setInterval(() => {
      // Simulate random fluctuations
      const newTemp = +(temp + (Math.random() * 2 - 1)).toFixed(1); // fluctuates +/- 1
      const newHum = Math.round(humidity + (Math.random() * 4 - 2)); // fluctuates +/- 2
      const newAqi = Math.round(aqi + (Math.random() * 20 - 10)); 
      const newLight = Math.round(light + (Math.random() * 2 - 1));
      const newRssi = Math.round(rssi + (Math.random() * 4 - 2));

      setTemp(newTemp);
      setHumidity(Math.max(0, Math.min(100, newHum)));
      setAqi(Math.max(400, newAqi));
      setLight(Math.max(0, Math.min(100, newLight)));
      setRssi(Math.min(-30, Math.max(-90, newRssi)));

      // Update Chart History
      setHistory(prev => {
        const newLabels = [...prev.labels.slice(1), new Date().toLocaleTimeString('en-US', { hour12: false, hour: "numeric", minute: "numeric", second: "numeric" })];
        const newTempData = [...prev.tempData.slice(1), newTemp];
        const newHumData = [...prev.humData.slice(1), newHum];
        return { labels: newLabels, tempData: newTempData, humData: newHumData };
      });
    }, 5000); // 5 second polling

    return () => clearInterval(pollData);
  }, [temp, humidity, aqi, light, rssi]);

  // Derived metric
  // Heat Index formula approximation
  const heatIndex = +(temp + (0.05 * humidity)).toFixed(1);

  // Alert colors
  const tempAlert = temp > 35;
  const tempColor = tempAlert ? '#ef4444' : '#f59e0b';
  const aqiAlert = aqi > 800;

  // Chart Configuration
  const chartData = {
    labels: history.labels,
    datasets: [
      {
        label: 'Temperature (°C)',
        data: history.tempData,
        borderColor: tempAlert ? '#ef4444' : '#f59e0b',
        backgroundColor: tempAlert ? 'rgba(239, 68, 68, 0.1)' : 'rgba(245, 158, 11, 0.1)',
        yAxisID: 'y',
        fill: true,
        tension: 0.4
      },
      {
        label: 'Humidity (%)',
        data: history.humData,
        borderColor: '#0ea5e9',
        backgroundColor: 'rgba(14, 165, 233, 0.1)',
        yAxisID: 'y1',
        fill: true,
        tension: 0.4
      }
    ]
  };

  const chartOptions = {
    responsive: true,
    maintainAspectRatio: false,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    scales: {
      x: { 
        grid: { color: 'rgba(255, 255, 255, 0.05)' },
        ticks: { color: 'rgba(255, 255, 255, 0.5)', maxRotation: 45, minRotation: 45 }
      },
      y: {
        type: 'linear',
        display: true,
        position: 'left',
        grid: { color: 'rgba(255, 255, 255, 0.05)' },
        title: { display: true, text: 'Temperature (°C)' },
        suggestedMin: 20,
        suggestedMax: 45
      },
      y1: {
        type: 'linear',
        display: true,
        position: 'right',
        grid: { drawOnChartArea: false }, 
        title: { display: true, text: 'Humidity (%)' },
        suggestedMin: 30,
        suggestedMax: 80
      },
    }
  };

  return (
    <div className="env-layout p-6 relative animate-fadeIn">
      <div className="flex justify-between items-center mb-2">
        <div>
          <h2 className="m-0 text-gradient flex items-center gap-2">
            <Database size={24} /> ESP32 SQL Live Feed
          </h2>
          <p className="text-secondary m-0 mt-1 flex items-center">
            Monitoring Environmental Nodes <span className="poll-indicator"></span>
          </p>
        </div>
      </div>

      {/* Row 1: Primary Gauges */}
      <div className="env-gauges-row">
        <div className={`glass-panel p-6 flex flex-col items-center justify-center ${tempAlert ? 'card-alert-red' : ''}`}>
          <h3 className="m-0 mb-6 font-bold text-lg flex items-center gap-2">
            <Thermometer size={20} color={tempColor} /> Ambient Temperature
          </h3>
          <CircularProgress 
            value={temp} max={50} color={tempColor} 
            suffix="°C" 
          />
          {tempAlert && <p className="alert-red font-bold mt-4 m-0 text-sm">Critical Heat Level Detected</p>}
        </div>

        <div className="glass-panel p-6 flex flex-col items-center justify-center">
          <h3 className="m-0 mb-6 font-bold text-lg flex items-center gap-2">
            <Droplets size={20} color="#0ea5e9" /> Relative Humidity
          </h3>
          <CircularProgress 
            value={humidity} max={100} color="#0ea5e9" 
            suffix="%" 
          />
        </div>
      </div>

      {/* Row 2: Secondary Glassmorphism Cards */}
      <div className="env-cards-row">
        {/* Air Quality */}
        <div className={`glass-panel p-5 sensor-card ${aqiAlert ? 'card-alert-red' : ''}`}>
          <div className="sensor-card-header">
            <h4 className="m-0 font-bold text-secondary">Air Quality (CO2)</h4>
            <div className="sensor-icon">
              <Wind size={20} color={aqiAlert ? '#ef4444' : '#2ECC71'} />
            </div>
          </div>
          <div>
            <div className={`sensor-value ${aqiAlert ? 'alert-red' : 'text-gradient'}`}>
              {aqi} <span className="sensor-unit">ppm</span>
            </div>
            <p className="sensor-desc">{aqi < 600 ? 'Air is fresh.' : 'Ventilation recommended.'}</p>
          </div>
        </div>

        {/* Light Intensity */}
        <div className="glass-panel p-5 sensor-card">
          <div className="sensor-card-header">
            <h4 className="m-0 font-bold text-secondary">Light Intensity</h4>
            <div className="sensor-icon">
              <Sun size={20} color="#eab308" />
            </div>
          </div>
          <div>
            <div className="sensor-value" style={{ color: '#eab308' }}>
              {light} <span className="sensor-unit">%</span>
            </div>
            <p className="sensor-desc">{light > 50 ? 'Optimal for reading.' : 'Too dark for focus.'}</p>
          </div>
        </div>

        {/* Heat Index */}
        <div className={`glass-panel p-5 sensor-card ${heatIndex > 35 ? 'card-alert-red' : ''}`}>
          <div className="sensor-card-header">
            <h4 className="m-0 font-bold text-secondary">Heat Index (Feels Like)</h4>
            <div className="sensor-icon">
              <Flame size={20} color="#f97316" />
            </div>
          </div>
          <div>
            <div className={`sensor-value ${heatIndex > 35 ? 'alert-red' : ''}`} style={{ color: '#f97316' }}>
              {heatIndex} <span className="sensor-unit">°C</span>
            </div>
            <p className="sensor-desc">Calculated from Temp & Hum.</p>
          </div>
        </div>

        {/* RSSI Signal Strength */}
        <div className="glass-panel p-5 sensor-card">
          <div className="sensor-card-header">
            <h4 className="m-0 font-bold text-secondary">ESP32 Signal (RSSI)</h4>
            <div className="sensor-icon">
              <Wifi size={20} color="#8b5cf6" />
            </div>
          </div>
          <div>
            <div className="sensor-value" style={{ color: '#8b5cf6' }}>
              {rssi} <span className="sensor-unit">dBm</span>
            </div>
            <p className="sensor-desc">{rssi > -60 ? 'Excellent connection.' : 'Weak connection.'}</p>
          </div>
        </div>
      </div>

      {/* Row 3: Multi-Line Chart */}
      <div className="env-chart-row">
        <div className="glass-panel p-6">
          <h3 className="m-0 mb-4 font-bold text-lg">24-Hour Environmental Trend (Simulated)</h3>
          <div className="relative min-h-[300px]">
            <Line ref={chartRef} data={chartData} options={chartOptions} />
          </div>
        </div>
      </div>

    </div>
  );
};

export default Environment;
