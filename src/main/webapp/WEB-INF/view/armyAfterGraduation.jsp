<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Indian Army - After Graduation</title>
  <style>
  body {
    margin: 0;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f7f7f7;
    color: #333;
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
      <h1>Join the Indian Army After Graduation</h1>
      <a href="<%=request.getContextPath()%>/home">Home</a>
      <p class="subtitle">Lead with honor. Your degree is your launchpad to command.</p>
    </div>

    <section class="entry">
      <h2>📝 CDS (Combined Defence Services)</h2>
      <ul>
        <li><strong>Entry:</strong> Through UPSC CDS Exam (twice a year)</li>
        <li><strong>Eligibility:</strong> Graduate from any discipline (IMA/OTA)</li>
        <li><strong>Age:</strong> 19 to 25 years</li>
        <li><strong>Process:</strong> Written Exam → SSB Interview → Medical → Merit List</li>
        <li><strong>Commission:</strong> Permanent (IMA) or Short Service (OTA)</li>
        <li><strong>Website:</strong> <a href="https://www.upsc.gov.in" target="_blank">UPSC CDS Portal</a></li>
      </ul>
    </section>

    <section class="entry">
      <h2>⚙ TGC (Technical Graduate Course)</h2>
      <ul>
        <li><strong>Entry:</strong> Direct SSB Interview for B.E./B.Tech graduates</li>
        <li><strong>Eligibility:</strong> Engineering in notified streams</li>
        <li><strong>Age:</strong> 20 to 27 years</li>
        <li><strong>Training:</strong> IMA, Dehradun</li>
        <li><strong>Commission:</strong> Permanent Commission</li>
        <li><strong>Website:</strong> <a href="https://joinindianarmy.nic.in" target="_blank">Join Indian Army</a></li>
      </ul>
    </section>

    <section class="entry">
      <h2>🎖 NCC Special Entry (Men & Women)</h2>
      <ul>
        <li><strong>Entry:</strong> Direct SSB (No written exam)</li>
        <li><strong>Eligibility:</strong> Graduate with minimum 50% + NCC 'C' Certificate (Grade B or above)</li>
        <li><strong>Age:</strong> 19 to 25 years</li>
        <li><strong>Commission:</strong> Short Service Commission (Officer Training Academy)</li>
        <li><strong>Website:</strong> <a href="https://joinindianarmy.nic.in" target="_blank">Join Indian Army</a></li>
      </ul>
    </section>

    <footer>
      <p>Forge your path. Lead from the front 🇮🇳</p>
    </footer>
  </div>
</body>
</html>
