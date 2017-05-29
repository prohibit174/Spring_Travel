package travel.route.controller;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.route.action.Action;
import travel.route.action.ActionForward;
import travel.route.action.insertRoute;


//1.do濡� �슂泥��븯硫� BoardController媛� �샇異쒕릺�뼱吏덇쾬�씠�떎.
@WebServlet("*.route")
public class RouteController extends HttpServlet {
	
	 private static final long serialVersionUID = 1L;

	    public RouteController() {
	    	 super();
	    }

	    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
	       String requestURI = request.getRequestURI();
	       String contextPath = request.getContextPath();
	       String command = requestURI.substring(contextPath.length()+1);
	       if(command.contains("/")){
	       String[] command2=command.split("/");
	       command=command2[1];
	       }
	       System.out.println("command : "+command);
	       
	       ActionForward forward = null;
	       Action action = null;
	       
	   
	       if(command.equals("insertRoute.route")){
	          action = new insertRoute();
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
