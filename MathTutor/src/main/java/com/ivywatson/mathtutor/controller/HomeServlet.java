/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.ivywatson.mathtutor.controller;
import com.ivywatson.mathtutor.appointments.AppointmentsModel;
import com.ivywatson.mathtutor.exception.AuthException;
import com.ivywatson.mathtutor.model.UsersModel;
import com.ivywatson.mathtutor.service.UserServiceImpl;
import com.ivywatson.mathtutor.appointments.AppointmentsService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class HomeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uri = request.getRequestURI();
        if (uri.equals("/about-me")) {
           request.getRequestDispatcher("WEB-INF/view/about-me.jsp").forward(request, response); 
        }
        else if (uri.equals("/testimonials")) {
            request.getRequestDispatcher("WEB-INF/view/testimonials.jsp").forward(request, response);
        }
        else if (uri.equals("/appointment-scheduler")) {
            if(request.getSession().getAttribute("user") == null) {
                request.getSession().setAttribute("path", "scheduler");
                request.getRequestDispatcher("WEB-INF/view/error.jsp").forward(request, response);
            } 
            else {
                System.out.println("USER : " + request.getSession().getAttribute("user").toString());
                ArrayList<AppointmentsModel> openAppts = new ArrayList<AppointmentsModel>();
                openAppts = AppointmentsService.getInstance().openApptDisplay();
                request.setAttribute("openAppts", openAppts);
                for (AppointmentsModel appt : openAppts) {
                    System.out.println(appt.toString());
                }
                request.getRequestDispatcher("WEB-INF/view/appointment-scheduler.jsp").forward(request, response);
                
            }
        }
        else if (uri.equals("/pricing")) {
            request.getRequestDispatcher("WEB-INF/view/pricing.jsp").forward(request, response);
            
        }
        else if (uri.equals("/register")) {
            String method = request.getMethod();
            if(method.equals("GET"))
                request.getRequestDispatcher("WEB-INF/view/register.jsp").forward(request, response);
            else {
                //process register logic here
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String name = request.getParameter("name");
                UserServiceImpl.getInstance().register(email, password, name);
                response.sendRedirect("/login");
            }
        }
        else if (uri.equals("/login")) {
            String method = request.getMethod();
            String path = (String) request.getSession().getAttribute("path");
            if(method.equals("GET")) {
                request.getRequestDispatcher("WEB-INF/view/login.jsp").forward(request, response);
            }
            else {
                //process register logic here
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                try {
                    UsersModel user = UserServiceImpl.getInstance().auth(email, password);
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    if (path.equals("scheduler"))
                        response.sendRedirect("/appointment-scheduler");
                    else if (path.equals("dashboard"))
                        response.sendRedirect("/dashboard");
                } catch (AuthException ex) {
                    request.setAttribute("errorMessage", ex.getMessage());
                    request.getRequestDispatcher("WEB-INF/view/error.jsp").forward(request, response);
                }
            }        }
        else if (uri.equals("/dashboard")) {
            if(request.getSession().getAttribute("user") == null) {
                request.getSession().setAttribute("path", "dashboard");
                request.getRequestDispatcher("WEB-INF/view/error.jsp").forward(request, response);
            }
            UsersModel user = (UsersModel) request.getSession().getAttribute("user");
            ArrayList<AppointmentsModel> appts;
            appts = AppointmentsService.getInstance().userDisplay(user.getEmail());
            request.setAttribute("appts", appts);
            request.getRequestDispatcher("WEB-INF/view/dashboard.jsp").forward(request, response);
        }
        else if (uri.equals("/test")) {
            ArrayList<AppointmentsModel> openAppts = new ArrayList<AppointmentsModel>();
            openAppts = AppointmentsService.getInstance().openApptDisplay();
            for (AppointmentsModel appt : openAppts) {
                System.out.println(appt.toString());
            }
            request.setAttribute("openAppts", openAppts);
            request.getRequestDispatcher("WEB-INF/view/test.jsp").forward(request, response);
        }
        else {
            request.getRequestDispatcher("WEB-INF/view/index.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
