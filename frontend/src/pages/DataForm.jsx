import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { generateInsights } from '../utils/logicEngine';
import { predictStress } from '../utils/stressPredictor';
import { 
  User, Calendar, Weight, Activity, Heart, Thermometer, 
  Moon, Dumbbell, Clock, ChevronRight, ChevronLeft 
} from 'lucide-react';
import './DataForm.css';

const DataForm = () => {
  const navigate = useNavigate();
  
  const [step, setStep] = useState(1);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [errors, setErrors] = useState({});

  const [formData, setFormData] = useState({
    name: '', age: '', gender: 'Male', weight: '', location: '',
    temp: '98.6', spo2: '98', pulse: '72', bpSys: '120', bpDia: '80',
    workoutType: 'None', exerciseTime: '0', sleepHours: '7', 
    foodChoice: 'Veg', meals: '3', studyHours: '0', healthIssues: 'None'
  });

  const handleChange = (e) => {
    setFormData({...formData, [e.target.name]: e.target.value});
    // Clear error when user types
    if (errors[e.target.name]) {
      setErrors({...errors, [e.target.name]: null});
    }
  };

  const validateStep = (currentStep) => {
    let newErrors = {};
    let isValid = true;

    if (currentStep === 1) {
      if (!formData.name.trim()) newErrors.name = 'Name is required';
      if (!formData.age) newErrors.age = 'Age is required';
      if (!formData.weight) newErrors.weight = 'Weight is required';
    } 
    else if (currentStep === 2) {
      if (!formData.spo2) newErrors.spo2 = 'SpO2 is required';
      if (!formData.pulse) newErrors.pulse = 'Pulse is required';
      if (!formData.bpSys) newErrors.bpSys = 'Systolic BP is required';
      if (!formData.bpDia) newErrors.bpDia = 'Diastolic BP is required';
    }
    else if (currentStep === 3) {
      if (!formData.sleepHours) newErrors.sleepHours = 'Sleep hours required';
      if (!formData.exerciseTime) newErrors.exerciseTime = 'Exercise time required';
    }

    if (Object.keys(newErrors).length > 0) {
      setErrors(newErrors);
      isValid = false;
    }

    return isValid;
  };

  const nextStep = () => {
    if (validateStep(step)) {
      setStep(step + 1);
    }
  };

  const prevStep = () => {
    setStep(step - 1);
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!validateStep(3)) return;

    setIsSubmitting(true);
    
    try {
      // Run rule-based insights (always works)
      const insights = generateInsights(formData);
      
      // Run ML stress prediction (calls Flask API, falls back to JS)
      const stressResult = await predictStress(formData);
      
      // Save data to SQLite database for future ML retraining
      try {
        await fetch('http://localhost:5000/save_log', {
          method: 'POST',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify(formData)
        });
      } catch (err) {
        console.error('Failed to save log to DB:', err);
      }
      
      // Update the user session with health data
      const storedUser = JSON.parse(localStorage.getItem('vitalMindUser') || '{}');
      const updatedUser = { ...storedUser, ...formData, insights };
      localStorage.setItem('vitalMindUser', JSON.stringify(updatedUser));
      
      // Legacy support for dashboard
      localStorage.setItem('vitalMindData', JSON.stringify({ formData, insights }));
      
      // Store ML stress prediction result
      localStorage.setItem('vitalMindStress', JSON.stringify(stressResult));
      
    } catch (err) {
      console.error('Submission error:', err);
    } finally {
      setIsSubmitting(false);
      navigate('/dashboard');
    }
  };

  return (
    <div className="m2">
      <div className="c2">
        <h2 className="form-title text-gradient">Daily Health Log</h2>
        <p className="form-subtitle">Your health, tracked scientifically.</p>
        
        {/* Step Indicator */}
        <div className="step-indicator">
          <div className={`step-dot ${step >= 1 ? (step > 1 ? 'completed' : 'active') : ''}`}>1</div>
          <div className={`step-dot ${step >= 2 ? (step > 2 ? 'completed' : 'active') : ''}`}>2</div>
          <div className={`step-dot ${step >= 3 ? 'active' : ''}`}>3</div>
        </div>

        <form onSubmit={handleSubmit}>
          
          {/* STEP 1: Basic Info */}
          {step === 1 && (
            <div className="step-content">
              <div className="form-grid">
                <div className="form-group">
                  <label>Name</label>
                  <div className="input-wrapper">
                    <User size={18} className={`input-icon ${errors.name ? 'error-icon' : ''}`} />
                    <input 
                      type="text" 
                      name="name" 
                      className={`form-input ${errors.name ? 'error' : ''}`}
                      placeholder="John Doe"
                      value={formData.name} 
                      onChange={handleChange} 
                    />
                  </div>
                  {errors.name && <span className="error-text">{errors.name}</span>}
                </div>

                <div className="form-group">
                  <label>Age</label>
                  <div className="input-wrapper">
                    <Calendar size={18} className={`input-icon ${errors.age ? 'error-icon' : ''}`} />
                    <input 
                      type="number" 
                      name="age" 
                      className={`form-input ${errors.age ? 'error' : ''}`}
                      placeholder="25"
                      value={formData.age} 
                      onChange={handleChange} 
                    />
                  </div>
                  {errors.age && <span className="error-text">{errors.age}</span>}
                </div>

                <div className="form-group">
                  <label>Weight (kg)</label>
                  <div className="input-wrapper">
                    <Weight size={18} className={`input-icon ${errors.weight ? 'error-icon' : ''}`} />
                    <input 
                      type="number" 
                      name="weight" 
                      className={`form-input ${errors.weight ? 'error' : ''}`}
                      placeholder="70"
                      value={formData.weight} 
                      onChange={handleChange} 
                    />
                  </div>
                  {errors.weight && <span className="error-text">{errors.weight}</span>}
                </div>

                <div className="form-group">
                  <label>Gender</label>
                  <div className="input-wrapper">
                    <User size={18} className="input-icon" />
                    <select 
                      name="gender" 
                      className="form-input"
                      value={formData.gender} 
                      onChange={handleChange}
                    >
                      <option>Male</option>
                      <option>Female</option>
                      <option>Other</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          )}

          {/* STEP 2: Health Data */}
          {step === 2 && (
            <div className="step-content">
              <div className="form-grid">
                <div className="form-group">
                  <label>SpO2 (%)</label>
                  <div className="input-wrapper">
                    <Activity size={18} className={`input-icon ${errors.spo2 ? 'error-icon' : ''}`} />
                    <input 
                      type="number" 
                      name="spo2" 
                      className={`form-input ${errors.spo2 ? 'error' : ''}`}
                      placeholder="98"
                      value={formData.spo2} 
                      onChange={handleChange} 
                    />
                  </div>
                  {errors.spo2 && <span className="error-text">{errors.spo2}</span>}
                </div>

                <div className="form-group">
                  <label>Pulse (bpm)</label>
                  <div className="input-wrapper">
                    <Heart size={18} className={`input-icon ${errors.pulse ? 'error-icon' : ''}`} />
                    <input 
                      type="number" 
                      name="pulse" 
                      className={`form-input ${errors.pulse ? 'error' : ''}`}
                      placeholder="72"
                      value={formData.pulse} 
                      onChange={handleChange} 
                    />
                  </div>
                  {errors.pulse && <span className="error-text">{errors.pulse}</span>}
                </div>

                <div className="form-group">
                  <label>BP Systolic</label>
                  <div className="input-wrapper">
                    <Activity size={18} className={`input-icon ${errors.bpSys ? 'error-icon' : ''}`} />
                    <input 
                      type="number" 
                      name="bpSys" 
                      className={`form-input ${errors.bpSys ? 'error' : ''}`}
                      placeholder="120"
                      value={formData.bpSys} 
                      onChange={handleChange} 
                    />
                  </div>
                  {errors.bpSys && <span className="error-text">{errors.bpSys}</span>}
                </div>

                <div className="form-group">
                  <label>BP Diastolic</label>
                  <div className="input-wrapper">
                    <Activity size={18} className={`input-icon ${errors.bpDia ? 'error-icon' : ''}`} />
                    <input 
                      type="number" 
                      name="bpDia" 
                      className={`form-input ${errors.bpDia ? 'error' : ''}`}
                      placeholder="80"
                      value={formData.bpDia} 
                      onChange={handleChange} 
                    />
                  </div>
                  {errors.bpDia && <span className="error-text">{errors.bpDia}</span>}
                </div>
              </div>
            </div>
          )}

          {/* STEP 3: Lifestyle Data */}
          {step === 3 && (
            <div className="step-content">
              <div className="form-grid">
                <div className="form-group">
                  <label>Sleep Hours</label>
                  <div className="input-wrapper">
                    <Moon size={18} className={`input-icon ${errors.sleepHours ? 'error-icon' : ''}`} />
                    <input 
                      type="number" 
                      name="sleepHours" 
                      className={`form-input ${errors.sleepHours ? 'error' : ''}`}
                      placeholder="7"
                      value={formData.sleepHours} 
                      onChange={handleChange} 
                    />
                  </div>
                  {errors.sleepHours && <span className="error-text">{errors.sleepHours}</span>}
                </div>

                <div className="form-group">
                  <label>Workout Type</label>
                  <div className="input-wrapper">
                    <Dumbbell size={18} className="input-icon" />
                    <select 
                      name="workoutType" 
                      className="form-input"
                      value={formData.workoutType} 
                      onChange={handleChange}
                    >
                      <option>None</option>
                      <option>Cardio</option>
                      <option>Yoga</option>
                      <option>Strength</option>
                    </select>
                  </div>
                </div>

                <div className="form-group">
                  <label>Exercise Time (hrs)</label>
                  <div className="input-wrapper">
                    <Clock size={18} className={`input-icon ${errors.exerciseTime ? 'error-icon' : ''}`} />
                    <input 
                      type="number" 
                      step="0.5" 
                      name="exerciseTime" 
                      className={`form-input ${errors.exerciseTime ? 'error' : ''}`}
                      placeholder="0.5"
                      value={formData.exerciseTime} 
                      onChange={handleChange} 
                    />
                  </div>
                  {errors.exerciseTime && <span className="error-text">{errors.exerciseTime}</span>}
                </div>
              </div>
            </div>
          )}

          {/* Navigation Buttons */}
          <div className="btn-group">
            {step > 1 && (
              <button type="button" className="btn-form btn-back" onClick={prevStep}>
                <ChevronLeft size={20} /> Back
              </button>
            )}
            
            {step < 3 ? (
              <button type="button" className="btn-form btn-next" onClick={nextStep}>
                Next <ChevronRight size={20} />
              </button>
            ) : (
              <button type="submit" className="btn-form btn-next" disabled={isSubmitting}>
                {isSubmitting ? (
                  <div className="spinner"></div>
                ) : (
                  <>Analyze Data <Activity size={20} /></>
                )}
              </button>
            )}
          </div>

        </form>
      </div>
    </div>
  );
};

export default DataForm;
