import { Link, useNavigate } from 'react-router-dom';
import { Sun, Moon, Activity, User, LogOut, Settings, UserCircle, Flame } from 'lucide-react';
import { useState, useEffect } from 'react';
import './Header.css';

const Header = ({ theme, toggleTheme }) => {
  const [user, setUser] = useState(null);
  const [showDropdown, setShowDropdown] = useState(false);
  const navigate = useNavigate();

  useEffect(() => {
    // Check if user exists in localStorage
    const storedUser = localStorage.getItem('vitalMindUser');
    if (storedUser) {
      setUser(JSON.parse(storedUser));
    }

    // Listener for login events (optional but good for SPA)
    const handleStorageChange = () => {
      const updatedUser = localStorage.getItem('vitalMindUser');
      setUser(updatedUser ? JSON.parse(updatedUser) : null);
    };

    window.addEventListener('storage', handleStorageChange);
    return () => window.removeEventListener('storage', handleStorageChange);
  }, []);

  const handleLogout = () => {
    localStorage.removeItem('vitalMindUser');
    setUser(null);
    setShowDropdown(false);
    navigate('/');
  };
  return (
    <header className="glass-panel main-header">
      <div className="header-container flex items-center justify-between">
        <Link to="/" className="logo flex items-center gap-2">
          <Activity color="var(--accent-primary)" size={28} />
          <span className="text-gradient">VitalMind</span>
        </Link>
        
        <nav className="nav-links flex items-center gap-4">
          <Link to="/">Home</Link>
          <Link to="/about">About</Link>
          {user && (
            <>
              <Link to="/dashboard">Dashboard</Link>
              <Link to="/achievements">Achievements</Link>
              <Link to="/environment">Sensors</Link>
              <Link to="/analytics">Analytics</Link>
            </>
          )}
          <Link to="#consult">Consult</Link>
        </nav>
        
        <div className="flex items-center gap-4 relative">
          <button onClick={toggleTheme} className="theme-toggle" aria-label="Toggle Theme">
            {theme === 'light' ? <Moon size={20} /> : <Sun size={20} />}
          </button>

          {user ? (
            <>
              <div className="profile-section relative flex items-center">
                <button 
                  className="avatar-btn flex items-center gap-2" 
                  onClick={() => setShowDropdown(!showDropdown)}
                  id="u-img"
                >
                  <div className="avatar-circle">
                  {user.photo ? (
                    <img src={user.photo} alt="User" />
                  ) : (
                    <span className="initials">{user.name?.charAt(0) || 'U'}</span>
                  )}
                </div>
                <span className="user-name-header">{user.name || 'User'}</span>
              </button>

              {showDropdown && (
                <div className="dropdown-menu glass-panel animate-slideDown">
                  <Link to="/profile" onClick={() => setShowDropdown(false)} className="dropdown-item">
                    <UserCircle size={18} /> My Profile
                  </Link>
                  <Link to="/settings" onClick={() => setShowDropdown(false)} className="dropdown-item">
                    <Settings size={18} /> Settings
                  </Link>
                  <button onClick={handleLogout} className="dropdown-item logout-btn">
                    <LogOut size={18} /> Logout
                  </button>
                </div>
              )}
            </div>
            
            <div 
              className="streak-badge flex items-center gap-1 ml-2 pl-4 border-l border-gray-200 dark:border-gray-700 font-bold"
              style={{ color: '#ff6b00', textShadow: '0 0 10px rgba(255, 107, 0, 0.4)' }}
              title="Daily Login Streak"
            >
              <Flame size={22} className="animate-pulse" />
              <span style={{ fontSize: '1.1rem' }}>{user.streak || 1}</span>
            </div>
          </>
          ) : (
            <Link to="/login" className="btn btn-primary">Login / Signup</Link>
          )}
        </div>
      </div>
    </header>
  );
};

export default Header;
