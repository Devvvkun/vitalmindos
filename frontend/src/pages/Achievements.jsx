import { useState } from 'react';
import './Achievements.css';

const achievementsData = [
  {
    id: 'early_adopter',
    icon: '🚀',
    title: 'Early Adopter',
    description: 'Log your first entry',
    target: 1,
    current: 1,
  },
  {
    id: 'data_enthusiast',
    icon: '📊',
    title: 'Data Enthusiast',
    description: 'Log 10 days of data',
    target: 10,
    current: 1,
  },
  {
    id: 'sleep_master',
    icon: '🌙',
    title: 'Sleep Master',
    description: 'Get 7-9 hours of sleep for 7 days',
    target: 7,
    current: 1,
  },
  {
    id: 'fitness_warrior',
    icon: '💪',
    title: 'Fitness Warrior',
    description: 'Exercise 30+ minutes for 10 days',
    target: 10,
    current: 1,
  },
  {
    id: 'happiness_champion',
    icon: '😊',
    title: 'Happiness Champion',
    description: 'Maintain 7+ happiness for 14 days',
    target: 14,
    current: 1,
  },
  {
    id: 'zen_master',
    icon: '✨',
    title: 'Zen Master',
    description: 'Keep stress ≤4 for 10 days',
    target: 10,
    current: 1,
  },
  {
    id: 'social_butterfly',
    icon: '🦋',
    title: 'Social Butterfly',
    description: 'Spend 2+ hours socially for 7 days',
    target: 7,
    current: 1,
  },
  {
    id: 'week_warrior',
    icon: '🔥',
    title: 'Week Warrior',
    description: 'Maintain a 7-day streak',
    target: 7,
    current: 1,
  },
  {
    id: 'month_master',
    icon: '👑',
    title: 'Month Master',
    description: 'Track for 30 consecutive days',
    target: 30,
    current: 1,
  },
  {
    id: 'century_club',
    icon: '💯',
    title: 'Century Club',
    description: 'Log 100 total entries',
    target: 100,
    current: 1,
  }
];

const Achievements = () => {
  const [achievements] = useState(achievementsData);

  return (
    <div className="achievements-container">
      <div className="achievements-header">
        <h1>🏆 Your Achievements</h1>
      </div>
      
      <div className="achievements-grid">
        {achievements.map((achievement) => {
          const isUnlocked = achievement.current >= achievement.target;
          const progressPercentage = Math.min((achievement.current / achievement.target) * 100, 100);
          
          return (
            <div 
              key={achievement.id} 
              className={`achievement-card glass-panel ${isUnlocked ? 'unlocked' : 'locked'}`}
            >
              <div className={`status-badge ${isUnlocked ? 'badge-unlocked' : 'badge-locked'}`}>
                {isUnlocked ? 'UNLOCKED' : 'LOCKED'}
              </div>
              
              <div className="achievement-icon">
                {achievement.icon}
              </div>
              
              <h3 className="achievement-title">{achievement.title}</h3>
              <p className="achievement-desc">{achievement.description}</p>
              
              <div className="progress-container">
                <div className="progress-bar-bg">
                  <div 
                    className="progress-bar-fill" 
                    style={{ width: `${progressPercentage}%` }}
                  ></div>
                </div>
                <div className="progress-text">
                  {achievement.current} / {achievement.target}
                </div>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
};

export default Achievements;
