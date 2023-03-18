/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ivywatson.mathtutor.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 993603
 */
public class DBConnectionConfig {
    public static Connection getConnection() {
        try {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(DBConnectionConfig.class.getName()).log(Level.SEVERE, null, ex);
            }
            return DriverManager.getConnection("jdbc:mysql://sql9.freesqldatabase.com:3306/sql9593527", "sql9593527", "1VrJb44yvN");
        } catch (SQLException ex) {
            Logger.getLogger(DBConnectionConfig.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
}
