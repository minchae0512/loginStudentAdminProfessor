package other;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Validate2 extends HttpServlet {

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");

    String nameS = request.getParameter("nameS");
    String passS = request.getParameter("passS");

    if(passS.equals("1234") && nameS.equals("peter"))
    {
      //creating a session
      HttpSession session = request.getSession();
      session.setAttribute("nameS", nameS);
      response.sendRedirect("Welcome2");
    }else{
      response.sendRedirect("welcome.html");
    }


  }

}