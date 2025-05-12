<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Game Portal | Gogeta Tournament</title>
    <link rel="stylesheet" href="main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
</head>
<body>
    <div class="logout-btn animate__animated animate__fadeInDown">
        Hey, <%= session.getAttribute("username") %> | 
        <a href="LogoutServlet" class="logout-link">Logout</a>
    </div>
    
    <div class="container">
        <h1 class="animate__animated animate__fadeIn">Choose Your Game</h1>
        
        <div class="game-grid">
            <div class="game-card animate__animated animate__fadeInLeft">
                <img src="img13.png" alt="Free Fire" class="game-icon">
                <h3>FREE FIRE</h3>
                <a href="ff.jsp"><button class="btn-play">Play Now</button></a>
            </div>
            
            <div class="game-card animate__animated animate__fadeInRight">
                <img src="img17.png" alt="BGMI" class="game-icon">
                <h3>BGMI</h3>
                <a href="bgmi.jsp"><button class="btn-play">Play Now</button></a>
            </div>
            
            <div class="game-card animate__animated animate__fadeInUp">
                <img src="img23.png" alt="Winners" class="game-icon">
                <h3>WINNERS</h3>
                <a href="winner.jsp"><button class="btn-play">View Winners</button></a>
            </div>
        </div>
    </div>
</body>
</html>