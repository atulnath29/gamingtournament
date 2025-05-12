<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Free Fire Tournaments | Gogeta Tournament</title>
    <link rel="stylesheet" href= "game.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
</head>
<body>
    <div class="header animate__animated animate__fadeInDown">
        <h1>Free Fire Tournaments</h1>
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
                <p><strong>Time:</strong> 2:00 PM</p>
                <p><strong>Entry Fee:</strong> ₹10</p>
                <p><strong>Prize Pool:</strong> ₹100</p>
                <button class="register-btn">Register Now</button>
            </div>
            
            <div class="event-card">
                <h3>Match - 2</h3>
                <p><strong>Time:</strong> 4:00 PM</p>
                <p><strong>Entry Fee:</strong> ₹20</p>
                <p><strong>Prize Pool:</strong> ₹200</p>
                <button class="register-btn">Register Now</button>
            </div>
        </div>
        
        <div class="tournament-type animate__animated animate__fadeInRight">
            <h2><span class="icon">👥</span> SQUAD TOURNAMENTS</h2>
            
            <div class="event-card">
                <h3>Squad Match - 1</h3>
                <p><strong>Time:</strong> 6:00 PM</p>
                <p><strong>Entry Fee:</strong> ₹50 (per squad)</p>
                <p><strong>Prize Pool:</strong> ₹500</p>
                <button class="register-btn">Register Squad</button>
            </div>
        </div>
    </div>
</body>
</html>