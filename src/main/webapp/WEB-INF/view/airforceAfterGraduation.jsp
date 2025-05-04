<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Indian Air Force - After Graduation</title>
  <style>
	body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #edf6ff;
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
    width: 90px;
    height: auto;
  }
  
  .subtitle {
    font-size: 1.1em;
    color: #003366;
  }
  
  .entry {
    background-color: #ffffff;
    border-left: 6px solid #336699;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  }
  
  .entry h2 {
    color: #336699;
    margin-top: 0;
  }
  
  .entry ul {
    padding-left: 20px;
  }
  
  .entry a {
    color: #336699;
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
      <h1>Join the Indian Air Force After Graduation</h1>
      <a href="<%=request.getContextPath()%>/home">Home</a>
      <p class="subtitle">Your wings await — lead the skies after your degree.</p>
    </div>

    <section class="entry">
      <h2>🛩 AFCAT (Air Force Common Admission Test)</h2>
      <ul>
        <li><strong>Branches:</strong> Flying, Technical, Ground Duty (Admin/Logistics/Accounts)</li>
        <li><strong>Eligibility:</strong> Graduate (Flying) or B.Tech (Technical)</li>
        <li><strong>Age:</strong> 20 to 24 years (Flying), 20 to 26 years (Ground Duty)</li>
        <li><strong>Commission:</strong> Short Service Commission (Flying), Permanent or Short Service (others)</li>
        <li><strong>Website:</strong> <a href="https://afcat.cdac.in" target="_blank">AFCAT Portal</a></li>
      </ul>
    </section>

    <section class="entry">
      <h2>📘 CDS (Air Force Academy)</h2>
      <ul>
        <li><strong>Entry:</strong> UPSC CDS Exam</li>
        <li><strong>Eligibility:</strong> Graduate with Physics and Math at 10+2 level</li>
        <li><strong>Age:</strong> 20 to 24 years</li>
        <li><strong>Training:</strong> Air Force Academy, Dundigal</li>
        <li><strong>Commission:</strong> Permanent Commission (Flying Branch)</li>
        <li><strong>Website:</strong> <a href="https://www.upsc.gov.in" target="_blank">UPSC CDS Portal</a></li>
      </ul>
    </section>

    <section class="entry">
      <h2>🛡 NCC Special Entry (Flying Branch)</h2>
      <ul>
        <li><strong>Entry:</strong> Direct SSB Interview (No Written Exam)</li>
        <li><strong>Eligibility:</strong> Graduate with NCC ‘C’ Certificate (Air Wing), min ‘B’ grade</li>
        <li><strong>Age:</strong> 19 to 24 years</li>
        <li><strong>Commission:</strong> Short Service Commission</li>
        <li><strong>Website:</strong> <a href="https://careerairforce.nic.in" target="_blank">Indian Air Force Careers</a></li>
      </ul>
    </section>

    <footer>
      <p>Rise above — transform your graduation into a gateway to the skies ✈</p>
    </footer>
  </div>
</body>
</html>
