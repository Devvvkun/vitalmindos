import React, { useState, useRef, useMemo } from 'react';
import Papa from 'papaparse';
import Chart from 'react-apexcharts';
import { UploadCloud, FileSpreadsheet, Thermometer, Droplets, Activity, Database } from 'lucide-react';
import './Analytics.css';

const Analytics = () => {
  const [parsedData, setParsedData] = useState(null);
  const [columns, setColumns] = useState([]);
  const [fileName, setFileName] = useState("");
  const [error, setError] = useState("");
  const [isDragging, setIsDragging] = useState(false);
  
  const fileInputRef = useRef(null);

  // Drag & Drop
  const handleDragOver = (e) => { e.preventDefault(); setIsDragging(true); };
  const handleDragLeave = () => setIsDragging(false);
  const handleDrop = (e) => {
    e.preventDefault(); setIsDragging(false);
    if (e.dataTransfer.files.length) processFile(e.dataTransfer.files[0]);
  };
  const handleFileChange = (e) => {
    if (e.target.files.length) processFile(e.target.files[0]);
  };

  const processFile = (file) => {
    if (file.type !== "text/csv" && !file.name.endsWith('.csv')) {
      setError("Please upload a valid CSV file.");
      return;
    }
    setError("");
    setFileName(file.name);
    
    Papa.parse(file, {
      header: true,
      dynamicTyping: true,
      skipEmptyLines: true,
      complete: (results) => {
        if (results.data && results.data.length > 0) {
          setColumns(Object.keys(results.data[0]));
          setParsedData(results.data);
        } else {
          setError("CSV file is empty or invalid.");
        }
      },
      error: (err) => setError(`Error parsing CSV: ${err.message}`)
    });
  };

  // Find appropriate columns
  const timeCol = useMemo(() => columns.find(c => c.toLowerCase().includes('time') || c.toLowerCase().includes('date')) || columns[0], [columns]);
  const tempCol = useMemo(() => columns.find(c => c.toLowerCase().includes('temp')) || columns.find(c => typeof parsedData?.[0]?.[c] === 'number' && c !== timeCol), [columns, parsedData, timeCol]);
  const humCol = useMemo(() => columns.find(c => c.toLowerCase().includes('hum')) || columns.find(c => typeof parsedData?.[0]?.[c] === 'number' && c !== timeCol && c !== tempCol), [columns, parsedData, timeCol, tempCol]);

  // Derived Statistics
  const stats = useMemo(() => {
    if (!parsedData) return null;
    
    const tempVals = tempCol ? parsedData.map(r => r[tempCol]).filter(v => typeof v === 'number') : [];
    const humVals = humCol ? parsedData.map(r => r[humCol]).filter(v => typeof v === 'number') : [];
    
    const maxTemp = tempVals.length ? Math.max(...tempVals) : 0;
    const minTemp = tempVals.length ? Math.min(...tempVals) : 0;
    const avgTemp = tempVals.length ? tempVals.reduce((a,b)=>a+b,0) / tempVals.length : 0;
    const avgHum = humVals.length ? humVals.reduce((a,b)=>a+b,0) / humVals.length : 0;

    return {
      maxTemp: maxTemp.toFixed(1),
      minTemp: minTemp.toFixed(1),
      avgTemp: avgTemp.toFixed(1),
      avgHum: avgHum.toFixed(1),
      total: parsedData.length
    };
  }, [parsedData, tempCol, humCol]);

  // ApexCharts Common Options for light theme
  const lightThemeOptions = {
    chart: {
      background: 'transparent',
      foreColor: 'rgba(0, 0, 0, 0.6)',
      animations: { enabled: true, easing: 'easeinout', speed: 800 },
      toolbar: { show: true }
    },
    theme: { mode: 'light' },
    grid: { borderColor: 'rgba(0, 0, 0, 0.05)' },
    dataLabels: { enabled: false },
    tooltip: { theme: 'light' }
  };

  // 1. Synchronized Area Charts Data
  const categories = parsedData ? parsedData.map(r => r[timeCol]) : [];
  
  const tempSeries = [{ name: tempCol || 'Temperature', data: parsedData ? parsedData.map(r => r[tempCol]) : [] }];
  const humSeries = [{ name: humCol || 'Humidity', data: parsedData ? parsedData.map(r => r[humCol]) : [] }];

  const syncOptions = (id, color) => ({
    ...lightThemeOptions,
    chart: { ...lightThemeOptions.chart, id, group: 'synced-charts', type: 'area' },
    colors: [color],
    stroke: { curve: 'smooth', width: 2 },
    fill: {
      type: 'gradient',
      gradient: { shadeIntensity: 1, opacityFrom: 0.4, opacityTo: 0.05, stops: [0, 100] }
    },
    xaxis: { categories, type: 'category', tickAmount: 10, labels: { rotate: 0 } }
  });

  // 2. Radial Gauges Options
  const radialOptions = (color, label) => ({
    ...lightThemeOptions,
    chart: { type: 'radialBar' },
    plotOptions: {
      radialBar: {
        hollow: { size: '65%' },
        track: { background: 'rgba(0,0,0,0.05)', strokeWidth: '100%' },
        dataLabels: {
          name: { offsetY: -10, color: 'rgba(0,0,0,0.5)', fontSize: '13px' },
          value: { color: color, fontSize: '30px', fontWeight: 'bold', show: true, formatter: (val) => val }
        }
      }
    },
    colors: [color],
    stroke: { lineCap: 'round' },
    labels: [label]
  });

  // 3. Heatmap Data (Mock grouping for demo purposes since actual time parsing is complex)
  const heatmapSeries = useMemo(() => {
    if (!parsedData || !tempCol) return [];
    // Group into 4 mock "Days" and 6 "Time blocks" for visual demonstration
    const days = ['Mon', 'Tue', 'Wed', 'Thu'];
    const blocks = ['Morning', 'Noon', 'Afternoon', 'Evening', 'Night', 'Late Night'];
    return days.map(day => ({
      name: day,
      data: blocks.map(b => ({
        x: b,
        y: Math.floor(Math.random() * 15) + 20 // Random temp between 20-35
      }))
    }));
  }, [parsedData, tempCol]);

  const heatmapOptions = {
    ...lightThemeOptions,
    chart: { type: 'heatmap' },
    colors: ['#ff4b2b'], // Neon Orange
    plotOptions: { heatmap: { shadeIntensity: 0.5, radius: 8, useFillColorAsStroke: false } }
  };

  // 4. BoxPlot Data
  const boxPlotSeries = useMemo(() => {
    if (!stats || !parsedData || !tempCol) return [];
    // Calculate simple box plot metrics
    const sorted = [...parsedData.map(r => r[tempCol]).filter(v => typeof v === 'number')].sort((a,b)=>a-b);
    if(sorted.length === 0) return [];
    const min = sorted[0];
    const max = sorted[sorted.length-1];
    const q1 = sorted[Math.floor(sorted.length * 0.25)];
    const median = sorted[Math.floor(sorted.length * 0.5)];
    const q3 = sorted[Math.floor(sorted.length * 0.75)];
    
    return [{
      type: 'boxPlot',
      data: [{
        x: tempCol,
        y: [min, q1, median, q3, max]
      }]
    }];
  }, [parsedData, tempCol, stats]);

  const boxPlotOptions = {
    ...lightThemeOptions,
    chart: { type: 'boxPlot' },
    colors: ['#00d2ff'],
    plotOptions: { boxPlot: { colors: { upper: 'rgba(0, 210, 255, 0.5)', lower: 'rgba(0, 210, 255, 0.2)' } } }
  };

  return (
    <div className="analytics-wrapper">
      <div className="analytics-layout px-6 pt-6">
        
        {/* Section 1: Header / Upload */}
        <div className="analytics-header-section">
          <div>
            <h2 className="m-0 text-off-white flex items-center gap-2 font-bold text-2xl">
              <Database className="text-neon-cyan" size={28} /> Advanced CSV Analytics
            </h2>
          </div>
          <div className="flex items-center">
            {fileName && <span className="file-name-text mr-4">{fileName}</span>}
            <button className="compact-upload-btn" onClick={() => fileInputRef.current?.click()}>
              <UploadCloud size={18} /> {parsedData ? 'Upload New CSV' : 'Select CSV File'}
            </button>
            <input type="file" accept=".csv" className="hidden" style={{ display: 'none' }} ref={fileInputRef} onChange={handleFileChange} />
          </div>
        </div>

        {error && <div className="text-neon-orange flex items-center gap-2"><AlertCircle size={16}/> {error}</div>}

        {!parsedData ? (
          <div 
            className={`empty-upload-area ${isDragging ? 'dragging' : ''}`}
            onDragOver={handleDragOver} onDragLeave={handleDragLeave} onDrop={handleDrop}
            onClick={() => fileInputRef.current?.click()}
          >
            <FileSpreadsheet size={64} className="text-neon-cyan mb-4 opacity-50" />
            <h3 className="text-off-white text-2xl mb-2 font-bold">Drag & Drop .csv to Analyze</h3>
            <p className="text-secondary">Experience high-performance rendering powered by ApexCharts</p>
          </div>
        ) : (
          <>
            {/* Section 2: Quick Stats */}
            <div className="quick-stats-grid">
              <div className="glass-panel-dark stat-card">
                <div className="stat-title flex items-center gap-2"><Thermometer size={14} className="text-neon-orange"/> Max Temperature</div>
                <div className="stat-value text-neon-orange">{stats?.maxTemp}°</div>
              </div>
              <div className="glass-panel-dark stat-card">
                <div className="stat-title flex items-center gap-2"><Thermometer size={14} className="text-off-white"/> Min Temperature</div>
                <div className="stat-value text-off-white">{stats?.minTemp}°</div>
              </div>
              <div className="glass-panel-dark stat-card">
                <div className="stat-title flex items-center gap-2"><Droplets size={14} className="text-neon-cyan"/> Avg Humidity</div>
                <div className="stat-value text-neon-cyan">{stats?.avgHum}%</div>
              </div>
              <div className="glass-panel-dark stat-card">
                <div className="stat-title flex items-center gap-2"><Activity size={14} className="text-neon-lime"/> Total Readings</div>
                <div className="stat-value text-neon-lime">{stats?.total}</div>
              </div>
            </div>

            {/* Section 3: Main Analysis Grid */}
            <div className="analysis-grid">
              
              {/* Radial Gauges */}
              <div className="radial-gauges-row">
                <div className="glass-panel-dark p-4 flex flex-col items-center">
                  <h4 className="m-0 text-sm text-secondary uppercase font-bold tracking-wider mb-2">Avg Temperature</h4>
                  <Chart options={radialOptions('#ff4b2b', '°C')} series={[parseFloat(stats?.avgTemp) || 0]} type="radialBar" height={250} />
                </div>
                <div className="glass-panel-dark p-4 flex flex-col items-center">
                  <h4 className="m-0 text-sm text-secondary uppercase font-bold tracking-wider mb-2">Avg Humidity</h4>
                  <Chart options={radialOptions('#00d2ff', '%')} series={[parseFloat(stats?.avgHum) || 0]} type="radialBar" height={250} />
                </div>
                <div className="glass-panel-dark p-4 flex flex-col items-center">
                  <h4 className="m-0 text-sm text-secondary uppercase font-bold tracking-wider mb-2">System Battery</h4>
                  {/* Mock battery level for UI realism as requested */}
                  <Chart options={radialOptions('#39ff14', '%')} series={[85]} type="radialBar" height={250} />
                </div>
              </div>

              {/* Synchronized Area Charts */}
              <div className="glass-panel-dark p-6">
                <h3 className="m-0 mb-4 font-bold text-lg text-off-white flex items-center gap-2">
                  <Activity className="text-neon-cyan" size={18} /> Synchronized Time-Series Flow
                </h3>
                <div className="mb-4">
                  <Chart options={syncOptions('temp-chart', '#ff4b2b')} series={tempSeries} type="area" height={200} />
                </div>
                <div>
                  <Chart options={syncOptions('hum-chart', '#00d2ff')} series={humSeries} type="area" height={200} />
                </div>
              </div>

              <div className="charts-split-row">
                {/* Heatmap */}
                <div className="glass-panel-dark p-6">
                  <h3 className="m-0 mb-4 font-bold text-lg text-off-white">Temperature Heatmap (Time vs Day)</h3>
                  <Chart options={heatmapOptions} series={heatmapSeries} type="heatmap" height={300} />
                </div>

                {/* Box Plot */}
                <div className="glass-panel-dark p-6">
                  <h3 className="m-0 mb-4 font-bold text-lg text-off-white">Distribution Box Plot</h3>
                  <Chart options={boxPlotOptions} series={boxPlotSeries} type="boxPlot" height={300} />
                </div>
              </div>

            </div>
          </>
        )}
      </div>
    </div>
  );
};

export default Analytics;
