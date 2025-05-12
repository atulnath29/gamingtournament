<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register | Gogeta Tournament</title>
    <link rel="stylesheet" href="register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
</head>
<body>
    <div class="container animate__animated animate__zoomIn">
        <div class="card">
            <h1>Create Account</h1>
            <form action="RegisterServlet" method="post" class="register-form">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required class="input-field">
                </div>
                
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required class="input-field">
                </div>
                
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required class="input-field">
                </div>
                
                <button type="submit" class="btn-register">Register</button>
            </form>
            
            <%-- Show success message if redirected from successful registration --%>
            <% if ("success".equals(request.getParameter("registration"))) { %>
                <p class="success-message animate__animated animate__fadeIn">Registration successful! Please login.</p>
            <% } %>
            
            <%-- Show error message if registration failed --%>
            <% 
            String error = request.getParameter("error");
            if (error != null) { 
                String message = "Registration failed";
                if (error.equals("username")) message = "Username already exists";
                if (error.equals("email")) message = "Email already exists";
                if (error.equals("database")) message = "Database error occurred";
                if (error.equals("server")) message = "Server error occurred";
            %>
                <p class="error-message animate__animated animate__shakeX"><%= message %></p>
            <% } %>
            
            <div class="links">
                <p>Already have an account? <a href="login.jsp" class="link">Login here</a></p>
                <p><a href="index.html" class="link">Back to Home</a></p>
            </div>
        </div>
    </div>
</body>
</html>