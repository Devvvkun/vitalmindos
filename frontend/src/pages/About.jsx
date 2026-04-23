import React, { useState, useEffect } from 'react';
import Loader from '../components/Loader';
import { Activity, Cpu, BellRing, Code, Terminal, Sparkles, Database } from 'lucide-react';
import './About.css';

const About = () => {
  const [showLoader, setShowLoader] = useState(true);

  useEffect(() => {
    // 2700ms total: 1.2s pulse + 1.5s zoom = 2.7s
    const timer = setTimeout(() => {
      setShowLoader(false);
    }, 2700);

    return () => clearTimeout(timer);
  }, []);

  if (showLoader) {
    return <Loader />;
  }

  return (
    <div id="m1">
      {/* Section 1: The Identity */}
      <section id="c1" className="glass-about-card">
        <h1>VitalMind: The Neural Pulse of Modern Health.</h1>
        <p>Ujjwal's Vision for an AI-Powered Wellness Ecosystem.</p>
      </section>

      {/* Section 2: How AI Works */}
      <section id="c2" className="glass-about-card">
        <h2>How The AI Works</h2>
        <div className="ai-grid">
          
          <div className="ai-card">
            <div className="ai-icon-wrapper">
              <Activity size={28} />
            </div>
            <h3>Input</h3>
            <p>Daily Biometrics</p>
          </div>

          <div className="ai-card">
            <div className="ai-icon-wrapper">
              <Cpu size={28} />
            </div>
            <h3>Processing</h3>
            <p>Gemini Neural Engine</p>
          </div>

          <div className="ai-card">
            <div className="ai-icon-wrapper">
              <BellRing size={28} />
            </div>
            <h3>Result</h3>
            <p>Predictive Health Alerts</p>
          </div>

        </div>
      </section>

      {/* Section 3: Tech Stack */}
      <section id="c3" className="glass-about-card">
        <h2>Tech Stack</h2>
        <div className="tech-row">
          
          <div className="tech-badge">
            <Code size={18} />
            React
          </div>

          <div className="tech-badge">
            <Sparkles size={18} />
            Tailwind CSS
          </div>

          <div className="tech-badge">
            <Terminal size={18} />
            Python
          </div>

          <div className="tech-badge">
            <Database size={18} />
            Gemini API
          </div>

        </div>
      </section>
    </div>
  );
};

export default About;
