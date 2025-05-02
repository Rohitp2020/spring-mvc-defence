<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Defence Career Guide</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.css">
    <!--  <link rel="stylesheet" href="style.css"> -->
<style>
:root {
    --primary-color: #0d6efd;
    --secondary-color: #0a0a7d;
    --light-color: #f8f9fa;
    --dark-color: #212529;
    --gold-accent: #ffc107;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    color: var(--dark-color);
    padding-top: 56px; /* Reduced from 70px for smaller screens */
}

/* Navbar Styling */
.navbar-brand {
    font-weight: 700;
    line-height: 1.2;
    font-size: 1.1rem; /* Reduced font size for smaller screens */
}

.nav-link {
    font-weight: 500;
    transition: color 0.3s ease;
    font-size: 0.95rem; /* Reduced font size for smaller screens */
}

/* Hero Section */
/* Hero Section Styles */
.hero {
    background: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)),
                url('./bg\ home.avif') center/cover;
    color: #fff;
    padding: 30px 0;
    min-height: 100vh;
    display: flex;
    align-items: center;
}

.hero h1 {
    font-size: 2.5rem;
    font-weight: 700;
    margin-bottom: 15px;
    color: #fff;
    text-align: center;
}

.hero .lead {
    font-size: 1.2rem;
    margin-bottom: 25px;
    color: rgba(255, 255, 255, 0.9);
    text-align: center;
}

/* New logo container styles for equal-sized logos */
.logo-container {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 2rem;
    margin: 0 auto;
    flex-wrap: wrap;
    max-width: 90%;
}

.logo-wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 150px;
    height: 180px;
}

.service-logo {
    max-width: 100%;
    max-height: 100%;
    width: auto;
    height: auto;
    object-fit: contain;
    filter: drop-shadow(0 0 8px rgba(255, 255, 255, 0.5));
    transition: transform 0.3s ease;
}

/* Hover effect for logos */
.service-logo:hover {
    transform: scale(1.05);
}

.quot {
    text-align: center;
    color: var(--gold-accent, #ffc107);
    font-weight: 700;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.6);
    margin-top: 10px;
    margin-bottom: 20px;
}

.quot h2 {
    font-size: 1.8rem;
    line-height: 1.4;
}

/* Media queries for responsiveness */
@media (max-width: 768px) {
    .hero h1 {
        font-size: 2rem;
    }
    
    .logo-wrapper {
        width: 150px;
        height: 150px;
    }
    
    .logo-container {
        gap: 1.5rem;
    }
    
    .quot h2 {
        font-size: 1.5rem;
    }
}

@media (max-width: 576px) {
    .hero h1 {
        font-size: 1.7rem;
    }
    
    .logo-wrapper {
        width: 120px;
        height: 120px;
    }
    
    .logo-container {
        gap: 1rem;
    }
    
    .quot h2 {
        font-size: 1.3rem;
    }
}

@media (max-width: 480px) {
    .logo-wrapper {
        width: 100px;
        height: 100px;
    }
    
    .logo-container {
        gap: 0.8rem;
    }
}

/* Room Cards */
.room-card img {
    height: 180px; /* Reduced from 200px */
    object-fit: cover;
}

.room-card .card-title {
    font-size: 1.15rem; /* Controlled font size */
}

.room-card .card-text {
    font-size: 0.9rem; /* Smaller text for descriptions */
}

/* Improved Responsive Design */
/* Extra large devices (large laptops and desktops, 1200px and up) */
@media (max-width: 1200px) {
    .hero h1 {
        font-size: 2.5rem;
    }
    
    .logo img {
        width: 140px;
    }
}

/* Large devices (laptops/desktops, 992px and up) */
@media (max-width: 992px) {
    .hero h1 {
        font-size: 2.2rem;
    }
    
    .hero p {
        font-size: 1.05rem;
    }
    
    .quot h2 {
        font-size: 1.4rem;
    }
    
    .logo {
        gap: 1rem;
    }
    
    .logo img {
        width: 130px;
    }

    /* Adjust card spacing for better fit */
    .room-card {
        margin-bottom: 20px;
    }
}

/* Medium devices (landscape tablets, 768px and up) */
@media (max-width: 768px) {
    body {
        padding-top: 56px; /* Standard Bootstrap navbar height */
    }
    
    .hero {
        text-align: center;
        min-height: auto; /* Allow it to size to content on smaller screens */
        padding: 30px 0;
    }
    
    .hero h1 {
        font-size: 1.8rem;
    }
    
    .hero p {
        font-size: 1rem;
    }
    
    .quot h2 {
        font-size: 1.2rem;
    }
    
    .logo {
        margin-top: 20px;
        gap: 0.8rem;
    }
    
    .logo img {
        width: 110px;
    }
    
    #contact .bg-primary {
        border-radius: 5px 5px 0 0;
        margin-bottom: 0;
    }

    /* Make room cards full width */
    .room-card {
        max-width: 450px;
        margin: 0 auto 20px;
    }

    /* Reduce spacing in sections */
    section {
        padding: 40px 0;
    }
}

/* Small devices (portrait tablets and large phones, 576px and up) */
@media (max-width: 576px) {
    .hero {
        padding: 20px 0;
    }
    
    .hero h1 {
        font-size: 1.6rem;
        margin-bottom: 10px;
    }
    
    .hero p {
        font-size: 0.95rem;
        margin-bottom: 20px;
    }
    
    .logo img {
        width: 90px;
    }
    
    .quot h2 {
        font-size: 1.1rem;
    }

    /* Smaller buttons on mobile */
    .btn {
        padding: 6px 16px;
        font-size: 0.9rem;
    }

    /* Adjust section headings for mobile */
    section h1 {
        font-size: 1.8rem;
    }

    section h3 {
        font-size: 1.1rem;
    }
}

/* Extra small devices (phones, 480px and down) */
@media (max-width: 480px) {
    body {
        padding-top: 50px;
    }
    
    .hero h1 {
        font-size: 1.4rem;
    }
    
    .logo {
        gap: 0.5rem;
    }
    
    .logo img {
        width: 75px;
    }
    
    /* Further reduce section padding */
    section {
        padding: 30px 0;
    }

    /* Make form elements more mobile-friendly */
    #contact form .form-control,
    #contact form .form-select {
        padding: 8px 12px;
        font-size: 0.9rem;
    }
}
</style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container">
            <img src="<%=request.getContextPath()%>/Images1/air_png-removebg-preview.png" alt="Defence Logo" height="70" width="70">
            <a class="navbar-brand" href="#">DEFENCE<br>CAREER</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#home">HOME</a></li>
                    <li class="nav-item"><a class="nav-link" href="#rooms">PATH WAYS</a></li>
                    <li class="nav-item"><a class="nav-link" href="#news-updates">UPDATES</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">CONTACT US</a></li>
                    <li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/myCustomLogin">LOGIN</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
<!-- Hero Section with Equal-Sized Logos -->
<section id="home" class="hero">
  <div class="container">
      <div class="row align-items-center min-vh-100">
          <!-- Title and description at the top -->
          <div class="col-md-12 text-center mb-4">
              <h1>Serve Your Nation with Pride</h1>
              <p class="lead">Comprehensive guidance for your journey into the Indian Defence Forces</p>
          </div>
          
          <!-- Logos container with equal-sized logos -->
          <div class="col-md-12">
              <div class="logo-container">
                  <div class="logo-wrapper">
                      <img src="<%=request.getContextPath()%>/Images1/army__1_-removebg-preview.png" alt="Army Logo" class="service-logo">
                  </div>
                  <div class="logo-wrapper">
                      <img src="<%=request.getContextPath()%>/Images1/air_png-removebg-preview.png" alt="Air Force Logo" class="service-logo">
                  </div>
                  <div class="logo-wrapper">
                      <img src="<%=request.getContextPath()%>/Images1/Eastern_Naval_Command_(India).webp" alt="Navy Logo" class="service-logo">
                  </div>
              </div>
          </div>
          
          <!-- Motivational text below logos -->
          <div class="col-md-12 text-center mt-4">
              <div class="quot">
                  <h2>DO SOMETHING TODAY!!! <br> THAT YOUR FUTURE SELF <br> WILL BE PROUD OF...</h2>
              </div>  
          </div>
      </div>
  </div>
</section>

    <!-- Rooms Section -->
    <section id="rooms" class="py-5">
        <div class="container">
            <h2 class="text-center mb-5">DEFENCE CAREER PATH</h2>
            <h5>EXPLORE THE VARIOUS PATH WAYS</h5>
            <div class="row">
                
                <div class="col-md-4 mb-4">
                    <div class="card room-card">
                    	<form action="<%=request.getContextPath()%>/myCustomLogin" method="GET">
	                        <img src="<%=request.getContextPath()%>/Images1/FACT-CHECK-2024-08-11T233539.849.webp" class="card-img-top" alt="Indian Army">
	                        <div class="card-body">
	                            <h5 class="card-title">Indian Army</h5>
	                            <p class="card-text">Join the world's second-largest standing army and serve at the forefront of national security.</p>
	                            
	                            <button class="btn btn-primary">View Details</button>
	                        </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card room-card">
                    	<form action="<%=request.getContextPath()%>/myCustomLogin" method="GET">
	                        <img src="<%=request.getContextPath()%>/Images1/gvl0vvvo_pm-modi-navy-day-_625x300_04_December_23.webp" class="card-img-top" alt="Indian Navy">
	                        <div class="card-body">
	                            <h5 class="card-title">Indian Navy</h5>
	                            <p class="card-text">Navigate the high seas as part of the naval defense force protecting India's maritime interests.</p>
	                            
	                            <button class="btn btn-primary">View Details</button>
	                        </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-4 mb-4">
                    <div class="card room-card">
                    	<form action="<%=request.getContextPath()%>/myCustomLogin" method="GET">
	                        <img src="<%=request.getContextPath()%>/Images1/indian-airforce-jobs-262559612-16x9.avif" class="card-img-top" alt="Indian Air Force">
	                        <div class="card-body">
	                            <h5 class="card-title">Indian Air Force</h5>
	                            <p class="card-text">Soar through the skies as part of the aerial warfare branch of the Indian armed forces.</p>
	                            
	                            <button class="btn btn-primary">View Details</button>
	                        </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- News & Updates Section -->
    <section id="news-updates" class="py-5 bg-light">
        <div class="container">
          <h2 class="text-center mb-4">LATEST NEWS & UPDATES</h2>
          <p class="text-center text-muted mb-5">
            Stay updated with the latest announcements, recruitment notifications, and news from the Indian Defence Forces.
          </p>
          <div class="row g-4">
            <div class="col-md-6">
              <div class="card h-100 shadow-sm p-4">
                <span class="badge bg-success mb-2">Army</span>
                <small class="text-muted d-block mb-2">June 15, 2025</small>
                <h5>Indian Army Announces New Recruitment Rally Dates</h5>
                <p class="text-muted">The Indian Army has released new dates for recruitment rallies across various states. Check eligibility and application process.</p>
                <a href="#" class="text-primary fw-semibold">Read More →</a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="card h-100 shadow-sm p-4">
                <span class="badge bg-primary mb-2">Navy</span>
                <small class="text-muted d-block mb-2">May 28, 2025</small>
                <h5>Naval Academy Expands Intake for Technical Branches</h5>
                <p class="text-muted">Indian Naval Academy increases seats for technical branches. Applications open for engineering graduates.</p>
                <a href="#" class="text-primary fw-semibold">Read More →</a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="card h-100 shadow-sm p-4">
                <span class="badge bg-danger mb-2">Air Force</span>
                <small class="text-muted d-block mb-2">June 2, 2025</small>
                <h5>Air Force to Hold Special Entry for Women Pilots</h5>
                <p class="text-muted">Indian Air Force announces special entry scheme for women pilots in fighter stream. Selection process to begin next month.</p>
                <a href="#" class="text-primary fw-semibold">Read More →</a>
              </div>
            </div>
            <div class="col-md-6">
              <div class="card h-100 shadow-sm p-4">
                <span class="badge bg-secondary mb-2">General</span>
                <small class="text-muted d-block mb-2">May 10, 2025</small>
                <h5>Defence Ministry Revises Physical Standards for Special Forces</h5>
                <p class="text-muted">New physical standards announced for candidates applying to special forces across all three services.</p>
                <a href="#" class="text-primary fw-semibold">Read More →</a>
              </div>
            </div>
          </div>
          <div class="text-center mt-4">
            <a href="#" class="btn btn-dark">View All Updates ⤴</a>
          </div>
        </div>
      </section>

      <!-- Success stories -->
      <div class="container my-5">
        <h2 class="text-center fw-bold mb-2">Success Stories</h2>
        <p class="text-center text-muted mb-4">
          Get inspired by the journeys of those who made their way into the Indian Defence Forces.
        </p>
      
        <div id="testimonialCarousel" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
      
            <!-- Slide 1 -->
            <div class="carousel-item active">
              <div class="d-flex flex-md-row flex-column align-items-center justify-content-center bg-light shadow-sm rounded p-2 mx-auto" style="max-width: 800px;">
                <img src="https://upload.wikimedia.org/wikipedia/commons/a/ae/Air_Marshal_Vikram_Singh_VSM_Air_Officer_Commanding-in-Chief%2C_South_Western_Air_Command.jpg" class="rounded-circle border border-warning border-2 me-md-3 mb-2 mb-md-0" width="64" height="64" alt="Vikram Singh">
                <div class="small lh-sm">
                  <p class="mb-1 fst-italic">"Flying fighter jets for the Air Force was my dream. NDA tested my limits, but made me who I am today."</p>
                  <strong class="d-block mb-0">Flt. Lt. Vikram Singh</strong>
                  <span class="text-primary">Flight Lieutenant, Indian Air Force</span>
                </div>
              </div>
            </div>
      
            <!-- Slide 2 -->
            <div class="carousel-item">
              <div class="d-flex flex-md-row flex-column align-items-center justify-content-center bg-light shadow-sm rounded p-2 mx-auto" style="max-width: 800px;">
                <img src="https://pbs.twimg.com/profile_images/1448258338140028935/xKudg2Hm_400x400.jpg" class="rounded-circle border border-warning border-2 me-md-3 mb-2 mb-md-0" width="64" height="64" alt="Pooja Sharma">
                <div class="small lh-sm">
                  <p class="mb-1 fst-italic">"Training for the Indian Army was intense, but wearing that uniform made it all worth it."</p>
                  <strong class="d-block mb-0">Lt. Pooja Sharma</strong>
                  <span class="text-primary">Lieutenant, Indian Army</span>
                </div>
              </div>
            </div>
      
            <!-- Slide 3 -->
            <div class="carousel-item">
              <div class="d-flex flex-md-row flex-column align-items-center justify-content-center bg-light shadow-sm rounded p-2 mx-auto" style="max-width: 800px;">
                <img src="https://www.bharat-rakshak.com/indianairforce/images/officers/25594.jpg" class="rounded-circle border border-warning border-2 me-md-3 mb-2 mb-md-0" width="64" height="64" alt="Rajeev Mehta">
                <div class="small lh-sm">
                  <p class="mb-1 fst-italic">"The Navy shaped me into the person I am today. Discipline, duty, and brotherhood define it all."</p>
                  <strong class="d-block mb-0">Cmdr. Rajeev Mehta</strong>
                  <span class="text-primary">Commander, Indian Navy</span>
                </div>
              </div>
            </div>
      
          </div>
      
          <!-- Controls -->
          <button class="carousel-control-prev" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon bg-dark rounded-circle p-1"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#testimonialCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon bg-dark rounded-circle p-1"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
      </div>

       <!-- FAQ -->
       <div class="container my-5">
        <h2 class="mb-4 text-center">Frequently Asked Questions</h2>
        <div class="accordion" id="faqAccordion">
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
              <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                What are the minimum qualifications for joining the Indian Defence Forces?
              </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#faqAccordion">
              <div class="accordion-body">
                Minimum qualifications vary depending on the branch and entry mode. Generally, you need to be an Indian citizen, have completed 10+2 for NDA entry, or graduation for direct entry. Age limits and physical standards also apply.
              </div>
            </div>
          </div>
      
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                How can I prepare for defence entrance exams?
              </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#faqAccordion">
              <div class="accordion-body">
                Focus on mathematics, general knowledge, English, and reasoning. Regular physical fitness training is essential. We offer specialized coaching programs and study materials to help you prepare effectively.
              </div>
            </div>
          </div>
      
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                When are the major defence recruitment exams conducted?
              </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#faqAccordion">
              <div class="accordion-body">
                NDA exams are typically held twice a year (April and September). CDS exams are conducted in February and November. For other specialized entries, notifications are released throughout the year.
              </div>
            </div>
          </div>
      
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingFour">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                Are there opportunities for women in the Defence Forces?
              </button>
            </h2>
            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#faqAccordion">
              <div class="accordion-body">
                Yes! Women can join the defence forces through various entries including UPSC, NDA, and direct recruitment. Combat roles have been opening up gradually with fighter pilots, tank operators, and combat positions now available.
              </div>
            </div>
          </div>
      
          <div class="accordion-item">
            <h2 class="accordion-header" id="headingFive">
              <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                What benefits do defence personnel receive?
              </button>
            </h2>
            <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#faqAccordion">
              <div class="accordion-body">
                Defence personnel receive competitive pay, allowances, free medical benefits for self and dependents, subsidized accommodation, education for children, and retirement benefits including pension. There are also opportunities for further education and professional growth.
              </div>
            </div>
          </div>
        </div>
      </div>
      
    <!-- Contact Section -->
    <section id="contact" class="py-5 bg-light">
        <div class="container">
          <h2 class="text-center fw-bold mb-2">Get Personalized Guidance</h2>
          <div class="text-center mb-5 text-muted">
            <hr style="width: 80px; height: 3px; background-color: gold; border: none; margin: 0 auto 10px auto;" />
            <p>Have questions about defence careers? Fill out the form below and our expert career counselors will provide you with personalized guidance.</p>
          </div>
      
          <div class="row justify-content-center">
            <div class="col-lg-10 bg-white shadow rounded p-4 d-md-flex">
              <!-- Contact Info -->
              <div class="bg-primary text-white p-4 rounded-start d-flex flex-column justify-content-between" style="min-width: 280px;">
                <div>
                  <h5 class="fw-bold mb-3">Contact Information</h5>
                  <p class="mb-2"><i class="bi bi-envelope me-2"></i>info@defencecareer.com</p>
                  <p class="mb-2"><i class="bi bi-telephone me-2"></i>+91 1800-123-4567</p>
                  <p class="mb-2"><i class="bi bi-geo-alt me-2"></i>Defence Career Guidance, New Delhi - 110001</p>
                </div>
                <div class="mt-4">
                  <h6 class="fw-bold">Office Hours:</h6>
                  <p class="mb-1">Monday - Friday: <strong>9:00 AM - 5:00 PM</strong></p>
                  <p>Saturday: <strong>9:00 AM - 1:00 PM</strong></p>
                </div>
              </div>
      
              <!-- Contact Form -->
              <div class="p-4 flex-grow-1">
                <h5 class="fw-bold mb-4">Send Us a Message</h5>
                <form id="contactForm" action="submitForm.jsp" method="post">
                  <div class="row mb-3">
                    <div class="col-md-6 mb-3 mb-md-0">
                      <input type="text" class="form-control" placeholder="Full Name" required>
                    </div>
                    <div class="col-md-6">
                      <input type="email" class="form-control" placeholder="Email Address" required>
                    </div>
                  </div>
                  <div class="row mb-3">
                    <div class="col-md-6 mb-3 mb-md-0">
                      <input type="tel" class="form-control" placeholder="Phone Number" required>
                    </div>
                    <div class="col-md-6">
                      <select class="form-select" required>
                        <option selected disabled>Interested In</option>
                        <option>Indian Army</option>
                        <option>Indian Navy</option>
                        <option>Indian Air Force</option>
                        <option>Coast Guard</option>
                      </select>
                    </div>
                  </div>
                  <div class="mb-3">
                    <textarea class="form-control" rows="4" placeholder="Tell us about your career goals and any specific questions you have..." required></textarea>
                  </div>
                  <button type="submit" class="btn btn-primary w-100 fw-semibold">
                    Send Message <i class="bi bi-send ms-2"></i>
                  </button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </section>
      
    <!-- Footer -->
    <footer class="text-white pt-5" style="background-color: #0a0a7d;">
      <div class="container">
        <div class="row gy-4">
          <!-- Logo and Description -->
          <div class="col-md-3">
            <h5 class="fw-bold mb-3">
              <i class="bi bi-shield-fill" style="color: #ffc107;"></i> DefenceCareer
            </h5>
            <p class="small">
              Providing comprehensive guidance and resources for aspiring candidates looking to build a career in the Indian Defence Forces.
            </p>
            <div class="d-flex gap-3 mt-2">
              <a href="#" class="text-white"><i class="bi bi-facebook"></i></a>
              <a href="#" class="text-white"><i class="bi bi-twitter"></i></a>
              <a href="#" class="text-white"><i class="bi bi-instagram"></i></a>
              <a href="#" class="text-white"><i class="bi bi-youtube"></i></a>
            </div>
          </div>
    
          <!-- Quick Links -->
          <div class="col-md-3">
            <h6 class="fw-bold mb-3">Quick Links</h6>
            <ul class="list-unstyled small">
              <li><a href="#" class="text-white text-decoration-none">Home</a></li>
              <li><a href="#" class="text-white text-decoration-none">Career Paths</a></li>
              <li><a href="#" class="text-white text-decoration-none">Exam Preparation</a></li>
              <li><a href="#" class="text-white text-decoration-none">News & Updates</a></li>
              <li><a href="#" class="text-white text-decoration-none">Contact Us</a></li>
              <li><a href="#" class="text-white text-decoration-none">Privacy Policy</a></li>
            </ul>
          </div>
    
          <!-- Defence Forces -->
          <div class="col-md-3">
            <h6 class="fw-bold mb-3">Defence Forces</h6>
            <ul class="list-unstyled small">
              <li><a href="#" class="text-white text-decoration-none">Indian Army</a></li>
              <li><a href="#" class="text-white text-decoration-none">Indian Navy</a></li>
              <li><a href="#" class="text-white text-decoration-none">Indian Air Force</a></li>
              <li><a href="#" class="text-white text-decoration-none">Indian Coast Guard</a></li>
              <li><a href="#" class="text-white text-decoration-none">Paramilitary Forces</a></li>
            </ul>
          </div>
    
          <!-- Contact Info -->
          <div class="col-md-3">
            <h6 class="fw-bold mb-3">Contact Us</h6>
            <ul class="list-unstyled small">
              <li class="mb-2">
                <i class="bi bi-geo-alt-fill text-warning me-2"></i>123 Defence Colony, New Delhi<br>Delhi - 110024, India
              </li>
              <li class="mb-2">
                <i class="bi bi-envelope-fill text-warning me-2"></i>info@defencecareer.com
              </li>
              <li>
                <i class="bi bi-telephone-fill text-warning me-2"></i>+91 1800-123-4567
              </li>
            </ul>
          </div>
        </div>
    
        <!-- Divider -->
        <hr class="border-light mt-4">
    
        <!-- Copyright -->
        <div class="d-flex flex-column flex-md-row justify-content-between align-items-center text-center small pb-3">
          <div>&copy; 2025 Defence Career Guidance. All rights reserved.</div>
          <div class="mt-2 mt-md-0">
            <a href="#" class="text-white text-decoration-none me-3">Terms of Service</a>
            <a href="#" class="text-white text-decoration-none me-3">Privacy Policy</a>
            <a href="#" class="text-white text-decoration-none">Disclaimer</a>
          </div>
        </div>
      </div>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.0/font/bootstrap-icons.min.js"></script>
    <script src="main.js"></script>
</body>
</html>