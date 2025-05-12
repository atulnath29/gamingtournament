package com.gogeta.servlet;

import java.io.IOException;
import java.sql.SQLException;

import com.gogeta.dao.DBUtil;
import com.gogeta.dao.User;
import com.gogeta.dao.UserDao;
import com.gogeta.dao.UserDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final UserDao userDao = new UserDaoImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        try {
            if (DBUtil.usernameExists(username)) {
                response.sendRedirect("register.jsp?error=username");
                return;
            }
            
            if (DBUtil.emailExists(email)) {
                response.sendRedirect("register.jsp?error=email");
                return;
            }
            
            User user = new User();
            user.setUsername(username);
            user.setEmail(email);
            user.setPassword(password);
            
            if (userDao.addUser(user)) {
                response.sendRedirect("login.jsp?registration=success");
            } else {
                response.sendRedirect("register.jsp?error=database");
            }
        } catch (SQLException e) {
        	System.out.println("----------------->>>>>>>This is server error");
            e.printStackTrace();
            response.sendRedirect("register.jsp?error=server");
        }
    }
}