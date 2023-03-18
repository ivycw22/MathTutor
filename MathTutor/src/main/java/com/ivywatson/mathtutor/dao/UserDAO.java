/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ivywatson.mathtutor.dao;

import com.ivywatson.mathtutor.config.DBConnectionConfig;
import com.ivywatson.mathtutor.model.UsersModel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 993603
 */
public class UserDAO {
    
    private static UserDAO instance;
    
    private UserDAO() {
        
    }
    
    public static synchronized UserDAO getInstance() {
        if (instance == null) {
            instance = new UserDAO();
        }
        return instance;
    }
    
    public void save(UsersModel user) {
        Connection connection = DBConnectionConfig.getConnection();
        try {
            PreparedStatement pr = connection.prepareStatement("insert into users_table"
                    + " (email, password, name) values (?, ?, ?)");
            pr.setString(1, user.getEmail());
            pr.setString(2, user.getPassword());
            pr.setString(3, user.getName());
            pr.executeUpdate();
            
            pr.close();
            connection.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public UsersModel findByEmailAndPassword(String email, String password) {
        Connection connection = DBConnectionConfig.getConnection();
        UsersModel user = null;
        try {
            PreparedStatement pr = connection.prepareStatement("select * from users_table where email=? and password=?;");
            pr.setString(1, email);
            pr.setString(2, password);
            
            ResultSet rs = pr.executeQuery();
            if(rs.next()) {
                user = new UsersModel();
                user.setEmail(rs.getString(1));
                user.setName(rs.getString(3));
            }
            rs.close();
            pr.close();
            connection.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;

    }
}
