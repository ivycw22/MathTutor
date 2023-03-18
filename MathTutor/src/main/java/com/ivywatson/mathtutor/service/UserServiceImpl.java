/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ivywatson.mathtutor.service;

import com.ivywatson.mathtutor.dao.UserDAO;
import com.ivywatson.mathtutor.exception.AuthException;
import com.ivywatson.mathtutor.model.UsersModel;

/**
 *
 * @author 993603
 */
public class UserServiceImpl implements UsersService {

    private static UserServiceImpl instance;
    
    private UserServiceImpl() {
        
    }
    
    public static synchronized UserServiceImpl getInstance() {
        if (instance == null) {
            instance = new UserServiceImpl();
        }
        return instance;
    }
    
    @Override
    public void register(String email, String password, String name) {
        UsersModel user = new UsersModel();
        user.setEmail(email);
        user.setPassword(password);
        user.setName(name);
        UserDAO.getInstance().save(user);
        System.out.println(user.toString());
        
    }

    @Override
    public UsersModel auth(String email, String password) throws AuthException {
        UsersModel user = UserDAO.getInstance().findByEmailAndPassword(email, password);
        if (user == null) {
            throw new AuthException("Incorrect Credentials");
        }
        System.out.println(user.toString());
        return user;
    }
    
}
