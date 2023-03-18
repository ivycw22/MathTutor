/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ivywatson.mathtutor.appointments;
import com.ivywatson.mathtutor.appointments.AppointmentsDAO;
import java.util.ArrayList;

public class AppointmentsService {
    private static AppointmentsService instance;
    private AppointmentsService() {
        
    }
    public static synchronized AppointmentsService getInstance() {
        if (instance == null) {
            instance = new AppointmentsService();
        }
        return instance;
    }
    public void create(String date, String time) {
        AppointmentsModel appt = new AppointmentsModel(date, time);
        appt.setScheduled(0);
        appt.setUser("admin");
        AppointmentsDAO.getInstance().save(appt);
    }
    public ArrayList userDisplay(String user){
    
        //should call to findByUser with the user's email address
        return AppointmentsDAO.getInstance().findByUser(user);
        //if the arraylist returned is null, display tha the user has no available appointments
        
    }
    
    public ArrayList openApptDisplay() {
        
        ArrayList<AppointmentsModel> openAppts;
        openAppts = AppointmentsDAO.getInstance().findByAvailability(0);
        return openAppts;
    }
    
//    public void reserve(String user, String date, String time, String subject, String name) {
//        // grab the user's email & save that as the user
//        AppointmentsModel appt = new AppointmentsModel(user, date, time, 1, subject, name);
//        AppointmentsDAO.getInstance().update(appt);
//    }
}
