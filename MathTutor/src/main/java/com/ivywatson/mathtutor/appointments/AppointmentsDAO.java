/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ivywatson.mathtutor.appointments;

import com.ivywatson.mathtutor.config.DBConnectionConfig;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AppointmentsDAO {
     private static AppointmentsDAO instance;
    
    private AppointmentsDAO() {
        
    }
    
    public static synchronized AppointmentsDAO getInstance() {
        if (instance == null) {
            instance = new AppointmentsDAO();
        }
        return instance;
    }
    
     public void save(AppointmentsModel appt) {
        Connection connection = DBConnectionConfig.getConnection();
        try {
            PreparedStatement pr = connection.prepareStatement("insert into appointments_table"
                    + " (user, date, time, scheduled, subject, name) values (?, ?, ?, ?, ?, ?)");
            pr.setString(1, appt.getUser());
            pr.setString(2, appt.getDate());
            pr.setString(3, appt.getTime());
            pr.setInt(4, appt.getScheduled());
            pr.setString(5, appt.getSubject());
            pr.setString(6, appt.getName());
            pr.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(AppointmentsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
//     public void update(AppointmentsModel appt) {
//         // put new stuff in
//         Connection connection = DBConnectionConfig.getConnection();
//         try {
//             PreparedStatement pr = connection.prepareStatement("update appointments_table set user=?, scheduled=1, subject=?, name=? where date=?, time=?;");
//             pr.setString(1, appt.getUser());
//             pr.setInt(2, appt.getScheduled());
//             pr.setString(3, appt.getSubject());
//             pr.setString(4, appt.getName());
//             pr.setString(5, appt.getDate());
//             pr.setString(6, appt.getTime());
//         } catch (SQLException ex) {
//            Logger.getLogger(AppointmentsDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//     }
     
//     public void delete(AppointmentsModel appt) {
//         Connection connection = DBConnectionConfig.getConnection();
//        try {
//            PreparedStatement pr = connection.prepareStatement("select * from appointments_table where date=?, time=?, scheduled=?;");
//            pr.setString(1, appt.getDate());
//            pr.setString(2, appt.getTime());
//            pr.setInt(3, appt.getScheduled());
//        } catch (SQLException ex) {
//            Logger.getLogger(AppointmentsDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//     }
     // takes the user's email & returns all appointments that are assigned to the user in an arraylist
    public ArrayList findByUser(String user) {
        Connection connection = DBConnectionConfig.getConnection();
        ArrayList<AppointmentsModel> appts = new ArrayList<AppointmentsModel>();
        AppointmentsModel tmp = null;
        try {
            PreparedStatement pr = connection.prepareStatement("select * from appointments_table where user=?;");
            pr.setString(1, user);
            
            ResultSet rs = pr.executeQuery();
            while(rs.next()) {
                tmp = new AppointmentsModel();
                tmp.setName(rs.getString(4));
                tmp.setUser(rs.getString(1));
                tmp.setDate(rs.getString(5));
                tmp.setTime(rs.getString(6));
                appts.add(tmp);
            }
            rs.close();
            pr.close();
            connection.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(AppointmentsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return appts;
    }
    // find by date takes in whether or not it's scheduled and returns an arraylist
    // containing all appointmentModels that fit the parameters
    public ArrayList findByAvailability(int scheduled) {
        Connection connection = DBConnectionConfig.getConnection();
        ArrayList<AppointmentsModel> appts = new ArrayList<AppointmentsModel>();
        AppointmentsModel tmp = null;
        try {
            PreparedStatement pr = connection.prepareStatement("select * from appointments_table where scheduled=?;");
            pr.setInt(1, scheduled);
            
            ResultSet rs = pr.executeQuery();
            while(rs.next()) {
                tmp = new AppointmentsModel();
                tmp.setDate(rs.getString(5));
                tmp.setTime(rs.getString(6));
                appts.add(tmp);
            }
            rs.close();
            pr.close();
            connection.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(AppointmentsDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return appts;
    }
}
