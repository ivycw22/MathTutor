/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ivywatson.mathtutor.exception;

/**
 *
 * @author 993603
 */
public class AuthException extends Exception {
    private String message;
    
    public AuthException(String message) {
        this.message = message;
    }    
    public String getMessage() {
        return this.message;
    }
}
