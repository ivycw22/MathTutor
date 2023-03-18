/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ivywatson.mathtutor.service;

import com.ivywatson.mathtutor.exception.AuthException;
import com.ivywatson.mathtutor.model.UsersModel;

/**
 *
 * @author 993603
 */
public interface UsersService {
    void register(String email, String password, String name);
    UsersModel auth(String email, String password) throws AuthException;
}
