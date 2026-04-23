import { Link } from 'react-router-dom';
import { Activity } from 'lucide-react';
import './Footer.css';

const Footer = () => {
  return (
    <footer className="glass-panel main-footer mt-8">
      <div className="footer-container grid grid-cols-3 gap-4">
        <div>
          <Link to="/" className="logo flex items-center gap-2 mb-4">
            <Activity color="var(--accent-primary)" size={24} />
            <span className="text-gradient">VitalMind</span>
          </Link>
          <p>Your personalized daily health & lifestyle companion.</p>
        </div>
        
        <div className="footer-links">
          <h4>Explore</h4>
          <Link to="#blog">Blog</Link>
          <Link to="#achievements">Achievements</Link>
          <Link to="#sessions">Sessions</Link>
        </div>
        
        <div className="footer-links">
          <h4>Support</h4>
          <Link to="#chatbot">AI Chatbot</Link>
          <Link to="#help">Help / FAQ</Link>
          <Link to="#social">Social Links</Link>
        </div>
      </div>
      <div className="footer-bottom text-center mt-8">
        <p>&copy; {new Date().getFullYear()} VitalMind. All rights reserved.</p>
      </div>
    </footer>
  );
};

export default Footer;
