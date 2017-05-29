package travel.main.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.main.action.HomeAction;
import travel.main.action.LoginAction;
import travel.main.action.LoginAction2;
import travel.main.action.LoginFormAction;
import travel.main.action.LogoutAction;
import travel.main.action.LogoutAction2;


@WebServlet("*.main")
public class MainController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    public MainController() {
        super();
    }

    //占쏙옙청占쏙옙 占쏙옙占시듸옙 占싶듸옙占쏙옙 request占쏙옙 占쏙옙占쏙옙占쏙옙 占쌍댐옙.
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       //占쏙옙청占실댐옙 URL占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 확占쏙옙占쌔븝옙占쏙옙. getRequestURI占쌨쇽옙占썲를 占쏙옙占쌔쇽옙
       String requestURI = request.getRequestURI();
       String contextPath = request.getContextPath();
       String command = requestURI.substring(contextPath.length()+1);
       System.out.println(command);
       
       travel.main.action.ActionForward forward = null;
       travel.main.action.Action action = null;
       
       //insertForm.do占쏙옙 占쏙옙청占실억옙占쏙옙占쏙옙
       if(command.equals("login.main")){
          //insertFormAction()占쏙옙 占쏙옙占쏙옙占� : 占쏙옙占쏙옙 jsp占싸곤옙占승메소듸옙
          action = new LoginFormAction();
          //insert.form.jsp占쏙옙 占쏙옙占쌘댐옙.
          try {
             forward = action.execute(request, response);
         } catch (Exception e) {
            e.printStackTrace();
         }
         //커占실듸옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占신기에 占승댐옙 占쌓쇽옙占쏙옙 호占쏙옙占싹몌옙 占싫댐옙.
       }else if(command.equals("loginAction.main")){
           //insertFormAction()占쏙옙 占쏙옙占쏙옙占� : 占쏙옙占쏙옙 jsp占싸곤옙占승메소듸옙
           action = new LoginAction();
           //insert.form.jsp占쏙옙 占쏙옙占쌘댐옙.
           try {
              forward = action.execute(request, response);
          } catch (Exception e) {
             e.printStackTrace();
          }
       }else if(command.equals("home.main")){
    	   action = new HomeAction();
    	   try{
    		   forward = action.execute(request, response);
    	   } catch(Exception e){
    		   e.printStackTrace();
    	   }
       }else if(command.equals("loginAction2.main")){
    	   action = new LoginAction2();
    	   try{
    		   forward = action.execute(request, response);
    	   } catch(Exception e){
    		   e.printStackTrace();
    	   }
       }else if(command.equals("logoutAction.main")){
    	   action = new LogoutAction();
    	   try{
    		   forward = action.execute(request, response);
    	   } catch(Exception e){
    		   e.printStackTrace();
    	   }
       }else if(command.equals("logoutAction2.main")){
    	   action = new LogoutAction2();
    	   try{
    		   forward = action.execute(request, response);
    	   } catch(Exception e){
    		   e.printStackTrace();
    	   }
       }
       
       if(forward !=null){
          if(forward.isRedirect()){
             //getPath占쏙옙 setPath占쌩댐옙 占쏙옙罐占� 占쏙옙占� 占쏙옙 占쏙옙 占쌍댐옙.
             response.sendRedirect(forward.getPath());
          } else {
             //Dispathcer : 占쏙옙占쏙옙占쏙옙청占쏙옙 占쏙옙占썲선 占쏙옙 占쏙옙청占쏙옙占쏙옙 jsp占쏙옙 占쏙옙占쌘댐옙.
              RequestDispatcher dispatcher = 
                    request.getRequestDispatcher(forward.getPath());
              dispatcher.forward(request, response);
          }
       }	
       
    }

   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doProcess(request, response);
   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doProcess(request, response);
   }

}