import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { Activity, Globe, Mail, AlertCircle } from 'lucide-react';
import './Login.css';

const Login = () => {
  const [isLogin, setIsLogin] = useState(true);
  const [email, setEmail] = useState('');
  const [name, setName] = useState('');
  const [password, setPassword] = useState('');
  const [strength, setStrength] = useState(0);
  const [error, setError] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const navigate = useNavigate();

  useEffect(() => {
    if (password.length === 0) setStrength(0);
    else if (password.length < 6) setStrength(1);
    else if (password.length < 10) setStrength(2);
    else setStrength(3);
  }, [password]);

  const calculateStreak = (lastLoginDateStr, currentStreak) => {
    if (!lastLoginDateStr) return 1;
    
    const lastDate = new Date(lastLoginDateStr);
    const today = new Date();
    
    // Set both to midnight for accurate day comparison
    lastDate.setHours(0,0,0,0);
    const todayMidnight = new Date();
    todayMidnight.setHours(0,0,0,0);
    
    const diffTime = Math.abs(todayMidnight - lastDate);
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24)); 
    
    if (diffDays === 0) return currentStreak || 1; // Logged in today already
    if (diffDays === 1) return (currentStreak || 0) + 1; // Logged in yesterday, +1 streak
    return 1; // Missed a day, reset streak
  };

  const handleLogin = async () => {
    try {
      const response = await fetch(`http://localhost:8000/users?email=${email}&password=${password}`);
      const users = await response.json();
      
      if (users.length > 0) {
        const user = users[0];
        
        // Calculate new streak
        const newStreak = calculateStreak(user.lastLoginDate, user.streak);
        const todayStr = new Date().toISOString();
        
        // Update user in DB
        await fetch(`http://localhost:8000/users/${user.id}`, {
          method: 'PATCH',
          headers: { 'Content-Type': 'application/json' },
          body: JSON.stringify({ lastLoginDate: todayStr, streak: newStreak })
        });
        
        const sessionUser = {
          id: user.id,
          email: user.email,
          name: user.name,
          streak: newStreak,
          isLoggedIn: true
        };
        
        localStorage.setItem('vitalMindUser', JSON.stringify(sessionUser));
        window.dispatchEvent(new Event('storage'));
        navigate('/dashboard');
      } else {
        setError('Invalid email or password.');
      }
    } catch (err) {
      setError('Database connection error. Ensure JSON server is running (npm run api).');
    }
  };

  const handleSignup = async () => {
    try {
      // Check if email exists
      const checkRes = await fetch(`http://localhost:8000/users?email=${email}`);
      const existingUsers = await checkRes.json();
      
      if (existingUsers.length > 0) {
        setError('Email already exists. Please login instead.');
        return;
      }
      
      // Create new user
      const todayStr = new Date().toISOString();
      const newUser = {
        email,
        password,
        name,
        streak: 1,
        lastLoginDate: todayStr
      };
      
      const response = await fetch('http://localhost:8000/users', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(newUser)
      });
      
      const createdUser = await response.json();
      
      const sessionUser = {
        id: createdUser.id,
        email: createdUser.email,
        name: createdUser.name,
        streak: 1,
        isLoggedIn: true
      };
      
      localStorage.setItem('vitalMindUser', JSON.stringify(sessionUser));
      window.dispatchEvent(new Event('storage'));
      navigate('/dashboard');
    } catch (err) {
      setError('Database connection error. Ensure JSON server is running (npm run api).');
    }
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setError('');
    setIsLoading(true);
    
    if (isLogin) {
      await handleLogin();
    } else {
      if (strength < 2) {
        setError('Please use a stronger password.');
        setIsLoading(false);
        return;
      }
      await handleSignup();
    }
    
    setIsLoading(false);
  };

  return (
    <div className="m1">
      <div className="c1">
        <div className="logo-container">
          <Activity className="logo-pulse" size={48} color="#2ECC71" />
        </div>
        
        <h2 className="title">{isLogin ? 'Welcome Back' : 'Create Account'}</h2>
        <p className="subtitle">Please enter your details to continue.</p>

        {error && (
          <div className="mb-4 p-3 rounded-lg bg-red-500/10 border border-red-500/20 text-red-500 text-sm flex items-center gap-2">
            <AlertCircle size={16} /> {error}
          </div>
        )}

        <form onSubmit={handleSubmit} className="form-container">
          {!isLogin && (
            <div className="i1">
              <label>Full Name</label>
              <input 
                type="text" 
                placeholder="John Doe" 
                required 
                className="glass-input" 
                value={name}
                onChange={(e) => setName(e.target.value)}
              />
            </div>
          )}
          
          <div className="i1">
            <label>Email</label>
            <input 
              type="email" 
              placeholder="you@example.com" 
              required 
              className="glass-input" 
              value={email}
              onChange={(e) => setEmail(e.target.value)}
            />
          </div>
          
          <div className="i2 relative">
            <label>Password</label>
            <input 
              type="password" 
              placeholder="••••••••" 
              required 
              className="glass-input"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
            />
            {!isLogin && password.length > 0 && (
              <div className="strength-bar-container">
                <div className={`strength-bar level-${strength}`}></div>
              </div>
            )}
          </div>

          <div className="a1">
            <button type="submit" className="btn-gradient" disabled={isLoading}>
              {isLoading ? 'Processing...' : (isLogin ? 'Login' : 'Sign Up')}
            </button>
          </div>
        </form>

        <div className="social-login">
          <p>Or continue with</p>
          <div className="social-icons">
            <button className="social-btn" aria-label="Social Login"><Globe size={20} /></button>
            <button className="social-btn" aria-label="Email Login"><Mail size={20} /></button>
          </div>
        </div>

        <p className="toggle-text">
          {isLogin ? "Don't have an account? " : "Already have an account? "}
          <span 
            className="text-gradient" 
            onClick={() => { setIsLogin(!isLogin); setPassword(''); setError(''); }}
          >
            {isLogin ? 'Sign up' : 'Login'}
          </span>
        </p>
      </div>
    </div>
  );
};

export default Login;
