import { Link } from 'react-router-dom';
import { Activity, Brain, ShieldCheck } from 'lucide-react';
import './Home.css';

const Home = () => {
  return (
    <div className="home-page">
      <section className="hero-section text-center">
        <h1 className="hero-title">
          Your Personalized <span className="text-gradient">Health & Lifestyle</span> Companion
        </h1>
        <p className="hero-subtitle">
          VitalMind analyzes your daily data to provide personalized schedules and health insights powered by smart rules.
        </p>
        <div className="hero-buttons flex justify-center gap-4 mt-8">
          <Link to="/login" className="btn btn-primary">Get Started</Link>
          <Link to="#features" className="btn btn-secondary">Learn More</Link>
        </div>
      </section>

      <section id="features" className="features-section grid grid-cols-3 mt-8 gap-8">
        <div className="feature-card glass-panel text-center p-6">
          <div className="feature-icon mb-4 flex justify-center">
            <Activity size={40} color="var(--accent-primary)" />
          </div>
          <h3>Daily Tracking</h3>
          <p>Log your vitals, sleep, and workouts easily in one place.</p>
        </div>
        
        <div className="feature-card glass-panel text-center p-6">
          <div className="feature-icon mb-4 flex justify-center">
            <Brain size={40} color="var(--accent-primary)" />
          </div>
          <h3>Smart Insights</h3>
          <p>Get daily recommendations based on your unique health profile.</p>
        </div>
        
        <div className="feature-card glass-panel text-center p-6">
          <div className="feature-icon mb-4 flex justify-center">
            <ShieldCheck size={40} color="var(--accent-primary)" />
          </div>
          <h3>Data Secure</h3>
          <p>Your health data is safe, private, and yours to control.</p>
        </div>
      </section>
    </div>
  );
};

export default Home;
