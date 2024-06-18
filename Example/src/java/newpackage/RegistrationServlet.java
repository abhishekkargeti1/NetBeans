/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package newpackage;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
public class RegistrationServlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
       
        String name = request.getParameter("user_name");
        String password = request.getParameter("password");
        String email = request.getParameter("user_email");
        String gender = request.getParameter("gender");
        String course = request.getParameter("course");
        String checkbox = request.getParameter("condition");
        
        
        
        if(checkbox !=null){
            if(checkbox.equals("checked")){
                writer.println("<h2>Form Submitted Successfully</h2>");
                RequestDispatcher rd=request.getRequestDispatcher("forwardServlet");
                rd.forward(request, response);
            }
        }else{
            writer.println("Please accept the terms and condition");
            // get the object of requestDispatcher
              RequestDispatcher rd=request.getRequestDispatcher("index.html");
              // include method
               rd.include(request, response);
        } 
    }
    
    
}
