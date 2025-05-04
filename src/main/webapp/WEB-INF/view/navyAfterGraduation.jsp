<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Indian Navy - After Graduation</title>
  <style>
  body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #e6f2ff;
    color: #001f3f;
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
    color: #003366;
  }
  
  .entry {
    background-color: #ffffff;
    border-left: 6px solid #003366;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  }
  
  .entry h2 {
    color: #003366;
    margin-top: 0;
  }
  
  .entry ul {
    padding-left: 20px;
  }
  
  .entry a {
    color: #003366;
    text-decoration: underline;
  }
  
  footer {
    text-align: center;
    font-style: italic;
    color: #444;
    margin-top: 40px;
  }
  
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <img src="https://www.joinindiannavy.gov.in/images/octaginal-crest.png" alt="Navy Emblem" />
      <h1>Join the Indian Navy After Graduation</h1>
      <a href="<%=request.getContextPath()%>/home">Home</a>
      <p class="subtitle">Set sail for leadership — serve your nation with skill and strength.</p>
    </div>

    <section class="entry">
      <h2>📘 CDS (Indian Naval Academy)</h2>
      <ul>
        <li><strong>Entry:</strong> UPSC CDS Exam (twice a year)</li>
        <li><strong>Eligibility:</strong> B.E./B.Tech in any discipline</li>
        <li><strong>Age:</strong> 19 to 22 years</li>
        <li><strong>Training:</strong> Naval Academy, Ezhimala</li>
        <li><strong>Commission:</strong> Permanent Commission as Sub-Lieutenant</li>
        <li><strong>Website:</strong> <a href="https://www.upsc.gov.in" target="_blank">UPSC CDS Portal</a></li>
      </ul>
    </section>

    <section class="entry">
      <h2>🧭 UES (University Entry Scheme)</h2>
      <ul>
        <li><strong>Entry:</strong> Campus selection during pre-final/final year of engineering</li>
        <li><strong>Eligibility:</strong> B.E./B.Tech students in specified streams</li>
        <li><strong>Age:</strong> 21 to 24 years</li>
        <li><strong>Commission:</strong> Permanent Commission (Executive/Technical)</li>
        <li><strong>Website:</strong> <a href="https://www.joinindiannavy.gov.in" target="_blank">Join Indian Navy</a></li>
      </ul>
    </section>

    <section class="entry">
      <h2>⚙ SSC (Short Service Commission)</h2>
      <ul>
        <li><strong>Branches:</strong> Executive, Technical, and Education</li>
        <li><strong>Eligibility:</strong> B.E./B.Tech or post-graduation in relevant disciplines</li>
        <li><strong>Age:</strong> 19.5 to 25 years</li>
        <li><strong>Duration:</strong> 10 years (extendable to 14)</li>
        <li><strong>Website:</strong> <a href="https://www.joinindiannavy.gov.in" target="_blank">Join Indian Navy</a></li>
      </ul>
    </section>

    <footer>
      <p>Navigate your future with courage and commitment ⚓</p>
    </footer>
  </div>
</body>
</html>
