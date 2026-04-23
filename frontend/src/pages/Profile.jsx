import { useState, useEffect } from 'react';
import { User, Mail, Calendar, Weight, MapPin, Camera, Edit2, Check, BrainCircuit, Activity, Heart, Shield } from 'lucide-react';
import './Profile.css';

const Profile = () => {
  const [user, setUser] = useState(null);
  const [isEditing, setIsEditing] = useState(false);
  const [editedUser, setEditedUser] = useState({});

  useEffect(() => {
    const storedUser = localStorage.getItem('vitalMindUser');
    if (storedUser) {
      const parsedUser = JSON.parse(storedUser);
      setUser(parsedUser);
      setEditedUser(parsedUser);
    }
  }, []);

  const handleSave = () => {
    localStorage.setItem('vitalMindUser', JSON.stringify(editedUser));
    setUser(editedUser);
    setIsEditing(false);
    // Trigger storage event for other components (like Header/Dashboard)
    window.dispatchEvent(new Event('storage'));
    alert("Profile Updated Successfully!");
  };

  const handleInputChange = (e) => {
    setEditedUser({ ...editedUser, [e.target.name]: e.target.value });
  };

  if (!user) return <div className="text-center mt-8">Loading Profile...</div>;

  return (
    <div className="profile-container animate-fadeIn">
      {/* Hero Section */}
      <div className="profile-hero glass-panel">
        <div className="profile-photo-wrapper" id="u-img">
          <div className="profile-avatar">
            {user.photo ? (
              <img src={user.photo} alt="Profile" />
            ) : (
              <span className="avatar-initialsLarge">{user.name?.charAt(0) || 'U'}</span>
            )}
            <button className="photo-edit-btn" aria-label="Change Photo">
              <Camera size={20} />
            </button>
          </div>
        </div>
        <div className="profile-hero-info">
          <h1 className="user-title">{user.name}</h1>
          <p className="user-email"><Mail size={16} /> {user.email}</p>
          <div className="profile-badges">
            <span className="badge badge-premium"><Shield size={14} /> Premium Member</span>
            <span className="badge badge-active">Active Today</span>
          </div>
        </div>
      </div>

      <div className="profile-main-grid">
        {/* Info Cards */}
        <div className="profile-info-section" id="u-info">
          <div className="section-header">
            <h2 className="section-title">Personal Details</h2>
            <button 
              className={`edit-toggle-btn ${isEditing ? 'active' : ''}`} 
              onClick={() => isEditing ? handleSave() : setIsEditing(true)}
              id="u-edit"
            >
              {isEditing ? <><Check size={18} /> Save</> : <><Edit2 size={18} /> Edit Profile</>}
            </button>
          </div>

          <div className="info-cards-grid">
            <div className="info-card glass-panel">
              <div className="info-icon"><Calendar size={20} color="#3b82f6" /></div>
              <div className="info-data">
                <label>Age</label>
                {isEditing ? (
                  <input type="number" name="age" value={editedUser.age} onChange={handleInputChange} className="profile-input" />
                ) : (
                  <p>{user.age} years</p>
                )}
              </div>
            </div>

            <div className="info-card glass-panel">
              <div className="info-icon"><User size={20} color="#8b5cf6" /></div>
              <div className="info-data">
                <label>Gender</label>
                {isEditing ? (
                  <select name="gender" value={editedUser.gender} onChange={handleInputChange} className="profile-input">
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                  </select>
                ) : (
                  <p>{user.gender}</p>
                )}
              </div>
            </div>

            <div className="info-card glass-panel">
              <div className="info-icon"><Weight size={20} color="#2ECC71" /></div>
              <div className="info-data">
                <label>Weight</label>
                {isEditing ? (
                  <input type="number" name="weight" value={editedUser.weight} onChange={handleInputChange} className="profile-input" />
                ) : (
                  <p>{user.weight} kg</p>
                )}
              </div>
            </div>

            <div className="info-card glass-panel">
              <div className="info-icon"><MapPin size={20} color="#ef4444" /></div>
              <div className="info-data">
                <label>Location</label>
                {isEditing ? (
                  <input type="text" name="location" value={editedUser.location} onChange={handleInputChange} className="profile-input" />
                ) : (
                  <p>{user.location || 'Not Set'}</p>
                )}
              </div>
            </div>
          </div>
        </div>

        {/* AI Health Summary Section */}
        <div className="profile-ai-section">
          <div className="glass-panel ai-summary-card">
            <div className="ai-header">
              <BrainCircuit size={28} className="ai-icon-pulse" />
              <h3 className="m-0">AI Health Insights</h3>
            </div>
            <div className="ai-content">
              <p className="greeting">"Namaste {user.name}!"</p>
              <p className="summary">
                Aapka profile analysis complete ho gaya hai. Aapka BMI stable hai, lekin humne notice kiya ki aapka **Weight** pichle update se 1kg badha hai. 
                Keep a check on your calorie intake!
              </p>
              <div className="health-stats-small">
                <div className="stat-item">
                  <Activity size={16} color="var(--accent-primary)" />
                  <span>Activity: High</span>
                </div>
                <div className="stat-item">
                  <Heart size={16} color="#ef4444" />
                  <span>Pulse: Stable</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Profile;
