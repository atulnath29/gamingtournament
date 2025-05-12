package com.gogeta.test;

public class DriverTest {
    public static void main(String[] args) {
        System.out.println("🏁 Starting MySQL driver test...");
        
        try {
            // Try to load the driver class
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("✅ SUCCESS! MySQL driver is properly loaded");
        } catch (ClassNotFoundException e) {
            System.out.println("❌ FAILED! MySQL driver not found");
            System.out.println("ℹ️ Solution: Add mysql-connector-java.jar to:");
            System.out.println("WebContent/WEB-INF/lib/ folder");
            e.printStackTrace();
        }
    }
}