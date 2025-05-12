<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BGMI Tournaments | Gogeta Tournament</title>
    <link rel="stylesheet" href="game.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
</head>
<body>
    <div class="header animate__animated animate__fadeInDown">
        <h1>BGMI Tournaments</h1>
        <a href="main.jsp" class="back-btn">← Back to Main</a>
        <div class="user-info">
            <%= session.getAttribute("username") %> | 
            <a href="LogoutServlet" class="logout-link">Logout</a>
        </div>
    </div>

    <div class="container">
        <div class="tournament-type animate__animated animate__fadeInLeft">
            <h2><span class="icon">👤</span> SOLO TOURNAMENTS</h2>
            
            <div class="event-card">
                <h3>Match - 1</h3>
                <p><strong>Time:</strong> 3:00 PM</p>
                <p><strong>Entry Fee:</strong> ₹15</p>
                <p><strong>Prize Pool:</strong> ₹150</p>
                <button class="register-btn">Register Now</button>
            </div>
        </div>
        
        <div class="tournament-type animate__animated animate__fadeInRight">
            <h2><span class="icon">👥</span> SQUAD TOURNAMENTS</h2>
            
            <div class="event-card">
                <h3>Squad Match - 1</h3>
                <p><strong>Time:</strong> 7:00 PM</p>
                <p><strong>Entry Fee:</strong> ₹60 (per squad)</p>
                <p><strong>Prize Pool:</strong> ₹600</p>
                <button class="register-btn">Register Squad</button>
            </div>
            
            <div class="event-card">
                <h3>Squad Match - 2</h3>
                <p><strong>Time:</strong> 9:00 PM</p>
                <p><strong>Entry Fee:</strong> ₹100 (per squad)</p>
                <p><strong>Prize Pool:</strong> ₹1000</p>
                <button class="register-btn">Register Squad</button>
            </div>
        </div>
    </div>
</body>
</html>