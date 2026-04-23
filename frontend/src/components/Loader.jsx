import React from 'react';
import './Loader.css';

const Loader = () => {
  return (
    <div className="loader-container">
      {/* The Heartbeat SVG */}
      <div className="pulse-container">
        <svg 
          className="pulse-svg" 
          viewBox="0 0 1000 200" 
          xmlns="http://www.w3.org/2000/svg"
        >
          <path 
            className="pulse-line" 
            d="M 0 100 L 200 100 L 250 100 L 300 50 L 350 150 L 400 20 L 450 180 L 500 100 L 550 100 L 600 70 L 650 130 L 700 100 L 1000 100" 
          />
        </svg>
      </div>
      
      {/* The V Logo that zooms in */}
      <div className="v-logo">V</div>
    </div>
  );
};

export default Loader;
