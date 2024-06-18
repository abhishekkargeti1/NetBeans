/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.example;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.Date;

/**
 *
 * @author abhis
 */
public class NewClass extends HttpServlet {
    
    @Override
    public void doGet(HttpServletRequest resquest,HttpServletResponse response)throws ServletException, IOException{
    System.out.println("Hello i am doGet");
    response.setContentType("text/html");
    PrintWriter writer = response.getWriter();
    writer.println("<h1>Hello world</h1>");
    writer.println(new Date().toString());
    
        
    
    } 
    
}
