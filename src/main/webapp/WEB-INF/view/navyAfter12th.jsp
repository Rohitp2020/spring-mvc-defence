<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Indian Navy - After 12th</title>
  <style>
  body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f0f8ff;
    color: #002244;
  }
  
  .container {
    max-width: 900px;
    margin: auto;
    padding: 20px;
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
    color: #004080;
  }
  
  .entry {
    background-color: #ffffff;
    border-left: 6px solid #004080;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  }
  
  .entry h2 {
    color: #004080;
    margin-top: 0;
  }
  
  .entry ul {
    padding-left: 20px;
  }
  
  .entry a {
    color: #004080;
    text-decoration: underline;
  }
  
  footer {
    text-align: center;
    font-style: italic;
    color: #555;
    margin-top: 40px;
  }
  
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <img src="https://www.joinindiannavy.gov.in/images/octaginal-crest.png" alt="Navy Emblem" />
      <h1>Join the Indian Navy After 12th</h1>
      <a href="<%=request.getContextPath()%>/home">Home</a>
      <p class="subtitle">Answer the call of the sea — serve your nation after school.</p>
    </div>

    <section class="entry">
      <h2>⚓ NDA (National Defence Academy)</h2>
      <ul>
        <li><strong>Entry:</strong> NDA Exam conducted by UPSC</li>
        <li><strong>Eligibility:</strong> 12th pass with Physics & Math</li>
        <li><strong>Age:</strong> 16.5 to 19.5 years</li>
        <li><strong>Training:</strong> NDA (3 years) + Naval Academy (1 year)</li>
        <li><strong>Commission:</strong> Permanent Commission as Sub-Lieutenant</li>
        <li><strong>Website:</strong> <a href="https://www.upsc.gov.in" target="_blank">UPSC NDA Portal</a></li>
      </ul>
    </section>

    <section class="entry">
      <h2>⚙ 10+2 B.Tech Cadet Entry Scheme</h2>
      <ul>
        <li><strong>Entry:</strong> Direct SSB interview based on JEE Mains Rank</li>
        <li><strong>Eligibility:</strong> 12th PCM with 70% + valid JEE Mains rank</li>
        <li><strong>Age:</strong> 16.5 to 19 years</li>
        <li><strong>Training:</strong> 4-year B.Tech course at Indian Naval Academy</li>
        <li><strong>Commission:</strong> Permanent Commission as Sub-Lieutenant</li>
        <li><strong>Website:</strong> <a href="https://www.joinindiannavy.gov.in" target="_blank">Join Indian Navy</a></li>
      </ul>
    </section>

    <footer>
      <p>Start your journey beneath the waves — with pride and purpose 🌊</p>
    </footer>
  </div>
</body>
</html>
