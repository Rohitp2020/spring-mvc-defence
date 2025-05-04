<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Indian Army - After 12th</title>
  <style>
  body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f5f5f5;
    color: #333;
  }
  
  .container {
    max-width: 900px;
    margin: auto;
    padding: 20px;
  }
  
  .pill-container {
    display: flex;
    justify-content: center;
    margin-bottom: 20px;
  }
  
  .pill {
    text-decoration: none;
    padding: 10px 20px;
    margin: 0 10px;
    border-radius: 50px;
    background-color: #e0e0e0;
    color: #333;
    transition: 0.3s;
  }
  
  .pill.active, .pill:hover {
    background-color: #2e4e1f;
    color: white;
  }
  
  .header {
    text-align: center;
    margin-bottom: 30px;
  }
  
  .header img {
    width: 80px;
    height: auto;
  }
  
  .subtitle {
    font-size: 1.1em;
    color: #555;
  }
  
  .entry {
    background-color: #ffffff;
    border-left: 6px solid #2e4e1f;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  }
  
  .entry h2 {
    color: #2e4e1f;
    margin-top: 0;
  }
  
  .entry ul {
    padding-left: 20px;
  }
  
  .entry a {
    color: #2e4e1f;
    text-decoration: underline;
  }
  
  footer {
    text-align: center;
    font-style: italic;
    color: #666;
    margin-top: 40px;
  }
  
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <img src="https://i.pinimg.com/originals/a3/61/9c/a3619c9baa3ac6426b2fd21ee20d0562.jpg" alt="Army Emblem" />
      <h1>Join the Indian Army After 12th</h1>
      <a href="<%=request.getContextPath()%>/home">Home</a>
      <p class="subtitle">Turn your dreams into duty. Serve with honor, right after school.</p>
    </div>

    <section class="entry">
      <h2>🇮🇳 NDA (National Defence Academy)</h2>
      <ul>
        <li><strong>Entry:</strong> UPSC NDA Exam (twice a year)</li>
        <li><strong>Eligibility:</strong> 12th pass (Physics & Math required for Navy & Air Force)</li>
        <li><strong>Age:</strong> 16.5 to 19.5 years</li>
        <li><strong>Training:</strong> NDA (3 years) + IMA (1 year)</li>
        <li><strong>Process:</strong> Written Exam → SSB Interview → Medical Test → Final Merit</li>
        <li><strong>Commission:</strong> Permanent Commission as Lieutenant</li>
        <li><strong>Website:</strong> <a href="https://www.upsc.gov.in" target="_blank">UPSC NDA Portal</a></li>
      </ul>
    </section>

    <section class="entry">
      <h2>⚙ TES (Technical Entry Scheme)</h2>
      <ul>
        <li><strong>Entry:</strong> Direct SSB Interview based on 12th PCM marks + JEE Mains</li>
        <li><strong>Eligibility:</strong> 12th with 60% in PCM + JEE Mains Qualified</li>
        <li><strong>Age:</strong> 16.5 to 19.5 years</li>
        <li><strong>Training:</strong> 1-year basic military + 3-year technical training at CME/MCTE/MCEME</li>
        <li><strong>Website:</strong> <a href="https://joinindianarmy.nic.in" target="_blank">Join Indian Army</a></li>
      </ul>
    </section>

    <footer>
      <p>Be the hero your country deserves 🇮🇳</p>
    </footer>
  </div>
</body>
</html>
