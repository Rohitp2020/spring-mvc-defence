<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Indian Air Force - After 12th</title>
  <style>
  body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #e8f4ff;
    color: #001a33;
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
    width: 90px;
    height: auto;
  }
  
  .subtitle {
    font-size: 1.1em;
    color: #004080;
  }
  
  .entry {
    background-color: #ffffff;
    border-left: 6px solid #0059b3;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  }
  
  .entry h2 {
    color: #0059b3;
    margin-top: 0;
  }
  
  .entry ul {
    padding-left: 20px;
  }
  
  .entry a {
    color: #0059b3;
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
      <img src="https://www.logo.wine/a/logo/Indian_Air_Force/Indian_Air_Force-Logo.wine.svg" alt="Air Force Emblem" />
      <h1>Join the Indian Air Force After 12th</h1>
      <a href="<%=request.getContextPath()%>/home">Home</a>
      <p class="subtitle">Touch the sky with glory — right after school!</p>
    </div>

    <section class="entry">
      <h2>✈ NDA (National Defence Academy)</h2>
      <ul>
        <li><strong>Entry:</strong> NDA Exam conducted by UPSC</li>
        <li><strong>Eligibility:</strong> 12th with Physics & Mathematics</li>
        <li><strong>Age:</strong> 16.5 to 19.5 years</li>
        <li><strong>Training:</strong> 3 years NDA + 1 year at Air Force Academy</li>
        <li><strong>Branch:</strong> Flying Branch (Permanent Commission)</li>
        <li><strong>Website:</strong> <a href="https://www.upsc.gov.in" target="_blank">UPSC NDA Portal</a></li>
      </ul>
    </section>

    <footer>
      <p>Prepare to soar — defend from above with honor and pride.</p>
    </footer>
  </div>
</body>
</html>
