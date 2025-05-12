package com.gogeta.test;
import java.sql.Connection;
import java.sql.DriverManager;

public class TestConnection {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/gaming_tournament";
        String username = "root";
        String password = "root";
        
        try {
            Connection conn = DriverManager.getConnection(url, username, password);
            System.out.println("MySQL connection successful!");
            conn.close();
        } catch (Exception e) {
            System.out.println("Connection failed!");
            e.printStackTrace();
        }
    }
}