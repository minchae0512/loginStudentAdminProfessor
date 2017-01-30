package other;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class Welcome2 extends HttpServlet {

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");

    PrintWriter out = response.getWriter();
    HttpSession session = request.getSession();
    String user = (String)session.getAttribute("nameS");
    System.out.println("Hello "+ user);

    if(user.equals("peter")){
      response.sendRedirect("logedS.html");
    }


  }
}