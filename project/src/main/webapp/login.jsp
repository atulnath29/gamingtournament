<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Gogeta Tournament</title>
    <link rel="stylesheet" href="login.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
</head>
<body>
    <div class="container animate__animated animate__zoomIn">
        <div class="card">
            <h1>Login</h1>
            <form action="LoginServlet" method="post" class="login-form">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required class="input-field">
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required class="input-field">
                </div>
                <button type="submit" class="btn-login">Login</button>
            </form>
            
            <div class="links">
                <p>Don't have an account? <a href="register.jsp" class="link">Register here</a></p>
                <p><a href="index.html" class="link">Back to Home</a></p>
            </div>

            <%-- Display error message if login fails --%>
            <% 
            String error = request.getParameter("error");
            if (error != null && error.equals("1")) { 
            %>
                <p class="error-message animate__animated animate__shakeX">Invalid username or password. Please try again.</p>
            <% } %>
        </div>
    </div>
</body>
</html>