package travel.carpool.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.carpool.action.Action;
import travel.carpool.action.ActionForward;
import travel.carpool.action.InsertAction;
import travel.carpool.action.InsertFormAction;
import travel.carpool.action.MainAction;
import travel.carpool.action.RequestAction;
import travel.product.action.ListAction;
import travel.product.action.insertAction;

@WebServlet("*.carpool")
public class CarpoolController extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
   
   
    public CarpoolController() {
        super();
    }

    //占쏙옙청占쏙옙 占쏙옙占시듸옙 占싶듸옙占쏙옙 request占쏙옙 占쏙옙占쏙옙占쏙옙 占쌍댐옙.
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       //占쏙옙청占실댐옙 URL占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 확占쏙옙占쌔븝옙占쏙옙. getRequestURI占쌨쇽옙占썲를 占쏙옙占쌔쇽옙
       String requestURI = request.getRequestURI();
       //System.out.println(requestURI);
       String contextPath = request.getContextPath();
       String command = requestURI.substring(contextPath.length()+1);
       System.out.println(command);
       
       ActionForward forward = null;
       Action action = null;
       
       if(command.equals("insertForm.carpool")){
          //insertFormAction()占쏙옙 占쏙옙占쏙옙占� : 占쏙옙占쏙옙 jsp占싸곤옙占승메소듸옙
          action = new InsertFormAction();
          //insert.form.jsp占쏙옙 占쏙옙占쌘댐옙.
          try {
             forward = action.execute(request, response);
         } catch (Exception e) {
            e.printStackTrace();
         }
         //커占실듸옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占신기에 占승댐옙 占쌓쇽옙占쏙옙 호占쏙옙占싹몌옙 占싫댐옙.
       }else if(command.equals("insertAction.carpool")){
           action = new InsertAction();
           try {
             forward = action.execute(request, response);   
          } catch (Exception e) {
             e.printStackTrace();
          }
       }else if(command.equals("list.carpool")){
    	   action = new travel.carpool.action.ListAction();
    	   try{
    		   forward = action.execute(request, response);
    	   } catch(Exception e){
    		   e.printStackTrace();
    	   }
       }else if(command.equals("main.carpool")){
    	   action = new MainAction();
    	   try{
    		   forward = action.execute(request, response);
    	   } catch(Exception e){
    		   e.printStackTrace();
    	   }
       }else if(command.equals("request.carpool")){
    	   action = new RequestAction();
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