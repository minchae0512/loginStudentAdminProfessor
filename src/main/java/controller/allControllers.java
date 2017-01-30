package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import students.Student;

import java.util.ArrayList;


/**
 * Created by jbuzimkic on 15.11.2016..
 */

@Controller
public class allControllers {


  @RequestMapping("/")
  public String defHandler(){
    return "welcome";
  }

  @RequestMapping("/index.html")
  public String defHandlerIn(){
    return "welcome";
  }

  @RequestMapping("/logedS")
  public String defHandlerS() { return "logedS"; }

  @RequestMapping("/welcome.html")
  public String defWelcome(){ return "welcome"; }

  @RequestMapping("/error.html")
  public String errorHandler(){ return "error"; }

  @RequestMapping("/loged.html")
  public String handlerLoged(HttpServletRequest request, HttpServletResponse response) {

    HttpSession session = request.getSession(false);
    String user = (String)session.getAttribute("user");

    System.out.println(user);

    if(user == null){
      return "error";
    }
    else{
      return "loged";

    }

  }

  @RequestMapping("/logout.html")
  public String handlerLogOut(HttpServletRequest request, HttpServletResponse response){

    HttpSession session = request.getSession(false);
    String user = (String)session.getAttribute("user");

    System.out.println(user);

    session.invalidate();

    System.out.println("Successfully logged out");

    return "logout";
  }

  @RequestMapping("/getDataStudent.html")
  public String getDataStudent(HttpServletRequest request, HttpServletResponse response) throws  Exception{

    HttpSession session = request.getSession(false);
    String admin = (String)session.getAttribute("user");

    if(admin.equals("minka")){

      String name = request.getParameter("name");
      String surname = request.getParameter("surname");
      String pass = request.getParameter("pass");
      String email = request.getParameter("email");

      Student student = new Student();
      student.setName(name);
      student.setSurname(surname);
      student.setPass(pass);
      student.setEmail(email);

      ArrayList list = new ArrayList();

      for(int i=0; i<list.size()+1; i++){
        list.add(i, list);
      }


    }else{
      response.sendRedirect("welcome.html");
    }


    return "loged";
  }
}
