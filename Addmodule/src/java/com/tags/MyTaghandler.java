/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

/**
 *
 * @author abhis
 */
public class MyTaghandler extends TagSupport {

    @Override
    public int doStartTag() throws JspException {
        
        try{
            // task. tag
            JspWriter out = pageContext.getOut();
            out.println("<h1>Hello world</h1>");
            out.println("<h1>I am Abhishek Kargeti</h1>");
            out.println("<h1>I am Software developer</h1>");
            out.println("<h1>ThankYou</h1>");
            
        }catch(Exception e){
            e.printStackTrace();
         }
        
        
        
        
        return SKIP_BODY;
    }
    
}
