<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tournament Winners | Gogeta Tournament</title>
    <link rel="stylesheet" href="winner.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
</head>
<body>
    <div class="header animate__animated animate__fadeInDown">
        <h1>Recent Tournament Winners</h1>
        <a href="main.jsp" class="back-btn">← Back to Main</a>
        <div class="user-info">
            <%= session.getAttribute("username") %> | 
            <a href="LogoutServlet" class="logout-link">Logout</a>
        </div>
    </div>
    
    <div class="container">
        <div class="winner-section animate__animated animate__fadeInLeft">
            <h2><span class="icon">🔥</span> Free Fire Winners</h2>
            <div class="winner-card">
                <img src="img25.png" alt="Winner 1" class="winner-img">
                <h3>Player: GamerPro99</h3>
                <p>Tournament: Solo Match #15</p>
                <p>Prize: ₹500</p>
            </div>
            <div class="winner-card">
                <img src="img25.png" alt="Winner 2" class="winner-img">
                <h3>Squad: Alpha Warriors</h3>
                <p>Tournament: Squad Battle #8</p>
                <p>Prize: ₹2000</p>
            </div>
        </div>
        
        <div class="winner-section animate__animated animate__fadeInRight">
            <h2><span class="icon">🎯</span> BGMI Winners</h2>
            <div class="winner-card">
                <img src="img25.png" alt="Winner 3" class="winner-img">
                <h3>Player: BattleKing</h3>
                <p>Tournament: Solo Showdown #5</p>
                <p>Prize: ₹750</p>
            </div>
            <div class="winner-card">
                <img src="img25.png" alt="Winner 4" class="winner-img">
                <h3>Squad: Desert Eagles</h3>
                <p>Tournament: Squad Clash #12</p>
                <p>Prize: ₹3000</p>
            </div>
        </div>
    </div>
</body>
</html>