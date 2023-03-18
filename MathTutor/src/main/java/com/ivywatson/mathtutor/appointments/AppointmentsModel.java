/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ivywatson.mathtutor.appointments;

/**
 *
 * @author 993603
 */
public class AppointmentsModel {
    private String user;
    private String date; // "YYY-MM-DD"
    private String time; //"HH:MM:SS"
    private int scheduled; // O = no/false/open, 1 = yes/true/closed
    private String subject;
    private String name;

    public AppointmentsModel() {
    }

    public AppointmentsModel(String date, String time) {
        this.date = date;
        this.time = time;
    }

    public AppointmentsModel(String user, String date, String time, int scheduled, String subject, String name) {
        this.user = user;
        this.date = date;
        this.time = time;
        this.scheduled = scheduled;
        this.subject = subject;
        this.name = name;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getScheduled() {
        return scheduled;
    }

    public void setScheduled(int scheduled) {
        this.scheduled = scheduled;
    }

    @Override
    public String toString() {
        return "AppointmentsModel{" + "user=" + user + ", date=" + date + ", time=" + time + ", scheduled=" + scheduled + ", subject=" + subject + ", name=" + name + '}';
    }
    
     
    
}
