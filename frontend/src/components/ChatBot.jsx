import React, { useState, useRef, useEffect } from 'react';
import { MessageSquare, X, Send, Bot, VolumeX } from 'lucide-react';
import './ChatBot.css';

const ChatBot = () => {
  const [isOpen, setIsOpen] = useState(false);
  const [messages, setMessages] = useState([
    { sender: 'ai', text: 'Hello! I am your VitalMind Assistant. How can I help you today? \n\nनमस्ते! मैं आपका वाइटलमाइंड असिस्टेंट हूँ। आज मैं आपकी कैसे मदद कर सकता हूँ?' }
  ]);
  const [input, setInput] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [isSpeaking, setIsSpeaking] = useState(false);
  const messagesEndRef = useRef(null);

  const API_KEY = import.meta.env.VITE_GEMINI_API_KEY;

  // Auto-scroll to bottom
  const scrollToBottom = () => {
    messagesEndRef.current?.scrollIntoView({ behavior: 'smooth' });
  };

  useEffect(() => {
    scrollToBottom();
  }, [messages, isLoading]);

  // TTS Logic
  const speakText = (text) => {
    if ('speechSynthesis' in window) {
      window.speechSynthesis.cancel(); // Stop any ongoing speech
      const utterance = new SpeechSynthesisUtterance(text);
      utterance.rate = 0.9; // Slightly slower for better clarity
      
      utterance.onstart = () => setIsSpeaking(true);
      utterance.onend = () => setIsSpeaking(false);
      utterance.onerror = () => setIsSpeaking(false);

      window.speechSynthesis.speak(utterance);
    }
  };

  const stopSpeaking = () => {
    if ('speechSynthesis' in window) {
      window.speechSynthesis.cancel();
      setIsSpeaking(false);
    }
  };

  const handleSend = async (e) => {
    e.preventDefault();
    if (!input.trim()) return;

    const userMessage = input;
    setMessages(prev => [...prev, { sender: 'user', text: userMessage }]);
    setInput('');
    setIsLoading(true);

    // Mock API if API key is not present
    if (!API_KEY) {
      setTimeout(() => {
        const mockResponse = `I see you said: "${userMessage}". Since the API key is not set, this is a simulated response.\n\nमैंने देखा आपने कहा: "${userMessage}"। चूँकि एपीआई कुंजी सेट नहीं है, यह एक नकली प्रतिक्रिया है।`;
        setMessages(prev => [...prev, { sender: 'ai', text: mockResponse }]);
        setIsLoading(false);
        speakText(mockResponse);
      }, 1500);
      return;
    }

    try {
      const response = await fetch(`https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${API_KEY}`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          systemInstruction: {
            parts: [{ text: "You are a bilingual assistant. For every question, provide a short answer in English, followed by the same answer in Hindi (Devnagari script). Use a friendly tone." }]
          },
          contents: [{
            parts: [{ text: userMessage }]
          }]
        })
      });

      const data = await response.json();
      
      if (data.candidates && data.candidates.length > 0) {
        let aiResponse = data.candidates[0].content.parts[0].text;
        // Clean markdown asterisks for speech
        const cleanSpeechText = aiResponse.replace(/\*/g, '');
        setMessages(prev => [...prev, { sender: 'ai', text: aiResponse }]);
        speakText(cleanSpeechText);
      } else {
        throw new Error('Invalid response from API');
      }
    } catch (error) {
      console.error('Chat API Error:', error);
      const errorMsg = 'Sorry, I am having trouble connecting right now.\n\nक्षमा करें, मुझे अभी कनेक्ट करने में समस्या हो रही है।';
      setMessages(prev => [...prev, { sender: 'ai', text: errorMsg }]);
      speakText(errorMsg);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <>
      {/* Toggle Button */}
      <button 
        className="chat-toggle-btn" 
        onClick={() => setIsOpen(!isOpen)}
        aria-label="Toggle Chat"
      >
        {isOpen ? <X size={28} /> : <MessageSquare size={28} />}
      </button>

      {/* Chat Window */}
      {isOpen && (
        <div className="chat-window">
          
          {/* Header */}
          <div className="chat-header">
            <h3 className="flex items-center gap-2">
              <div className={`bot-icon-wrapper ${isSpeaking ? 'speaking-pulse' : ''}`}>
                <Bot size={20} color="var(--accent-primary)"/>
              </div>
              VitalMind AI
            </h3>
            <div className="header-controls">
              {isSpeaking && (
                <button className="icon-btn" onClick={stopSpeaking} title="Stop Audio">
                  <VolumeX size={18} color="#ef4444" />
                </button>
              )}
              <button className="icon-btn close-btn" onClick={() => setIsOpen(false)} title="Close Chat">
                <X size={20} />
              </button>
            </div>
          </div>

          {/* Messages Container */}
          <div className="chat-messages">
            {messages.map((msg, idx) => (
              <div key={idx} className={`msg-bubble ${msg.sender === 'user' ? 'msg-user' : 'msg-ai'}`}>
                {/* Preserve newlines for English/Hindi separation */}
                {msg.text.split('\n').map((line, i) => (
                  <React.Fragment key={i}>
                    {line}
                    <br />
                  </React.Fragment>
                ))}
              </div>
            ))}
            
            {isLoading && (
              <div className="msg-bubble msg-ai typing-indicator">
                <div className="typing-dot"></div>
                <div className="typing-dot"></div>
                <div className="typing-dot"></div>
              </div>
            )}
            <div ref={messagesEndRef} />
          </div>

          {/* Input Area */}
          <form className="chat-input-area" onSubmit={handleSend}>
            <input 
              type="text" 
              className="chat-input" 
              placeholder="Ask me anything..." 
              value={input}
              onChange={(e) => setInput(e.target.value)}
              disabled={isLoading}
            />
            <button 
              type="submit" 
              className="send-btn" 
              disabled={!input.trim() || isLoading}
            >
              <Send size={18} />
            </button>
          </form>
          
        </div>
      )}
    </>
  );
};

export default ChatBot;
