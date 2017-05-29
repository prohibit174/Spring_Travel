package kosta.travel.controller;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.accompany.action.Action;
import travel.accompany.action.ActionForward;
import travel.accompany.action.accomp_createRoute;
import travel.accompany.action.accomp_main;
import travel.accompany.action.getUserRoute;


@WebServlet("*.accompany")
public class AccompanyController extends HttpServlet {
	
	 private static final long serialVersionUID = 1L;

	    public AccompanyController() {
	        super();
	    }

	    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
	       String requestURI = request.getRequestURI();
	       String contextPath = request.getContextPath();
	       String command = requestURI.substring(contextPath.length()+1);
	       System.out.println(command);
	       
	       ActionForward forward = null;
	       Action action = null;
	       
	       if(command.equals("main.accompany")){
	    	   /*System.out.println("hihi");*/
	          action = new accomp_main();
	          try {
	             forward = action.execute(request, response);
	         } catch (Exception e) {
	            e.printStackTrace();
	         }
	          }else if(command.equals("accomp_createRoute.accompany")){   //move to create a route page
		    	   /*System.out.println("hihi");*/
			          action = new accomp_createRoute();
			          try {
			             forward = action.execute(request, response);
			         } catch (Exception e) {
			            e.printStackTrace();
			         }
			          }
	        
	       	   
	       if(forward !=null){
	          if(forward.isRedirect()){
	             response.sendRedirect(forward.getPath());
	          } else {
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
