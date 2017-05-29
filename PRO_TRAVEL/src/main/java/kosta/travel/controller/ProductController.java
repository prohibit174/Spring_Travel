package travel.product.controller;



import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.product.action.Action;
import travel.product.action.ActionForward;
import travel.product.action.DetailAction;
import travel.product.action.DetailReqAction;
import travel.product.action.InsertFormAction;
import travel.product.action.InsertReqAction;
import travel.product.action.InsertReqFormAction;
import travel.product.action.ListAction;

import travel.product.action.MainAction;
import travel.product.action.UpdateAction;
import travel.product.action.UpdateFormAction;
import travel.product.action.deleteAction;
import travel.product.action.insertAction;


//1.do濡� �슂泥��븯硫� BoardController媛� �샇異쒕릺�뼱吏덇쾬�씠�떎.
@WebServlet("*.product")
public class ProductController extends HttpServlet {
	
	 private static final long serialVersionUID = 1L;

	    public ProductController() {
	        super();
	    }

	    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     
	       String requestURI = request.getRequestURI();
	       String contextPath = request.getContextPath();
	       String command = requestURI.substring(contextPath.length()+1);
	       System.out.println(command);
	       
	       ActionForward forward = null;
	       Action action = null;
	       
	   
	       if(command.equals("insertForm.product")){
	          action = new InsertFormAction();
	          try {
	             forward = action.execute(request, response);
	         } catch (Exception e) {
	            e.printStackTrace();
	         }

	       } else if(command.equals("insertAction.product")){
	          action = new insertAction();
	          try {
	            forward = action.execute(request, response);   
	         } catch (Exception e) {
	            e.printStackTrace();
	         }
	       }
	          else if(command.equals("listAction.product")){
		          action = new ListAction();
		          try {
		            forward = action.execute(request, response);   
		         } catch (Exception e) {
		            e.printStackTrace();
		         }
	          
	          
	       } else if(command.equals("detailAction.product")){
		          action = new DetailAction();
		          try {
		            forward = action.execute(request, response);   
		         } catch (Exception e) {
		            e.printStackTrace();
		         }
	          
	          
	       }else if(command.equals("mainAction.product")){
		          action = new MainAction();
		          try {
		            forward = action.execute(request, response);   
		         } catch (Exception e) {
		            e.printStackTrace();
		         }
	          
	          
	       }else if(command.equals("updateFormAction.product")){
		          action = new UpdateFormAction();
		          try {
		            forward = action.execute(request, response);   
		         } catch (Exception e) {
		            e.printStackTrace();
		         }
	          
	          
	       }else if(command.equals("updateAction.product")){
		          action = new UpdateAction();
		          try {
		            forward = action.execute(request, response);   
		         } catch (Exception e) {
		            e.printStackTrace();
		         }
	       }else if(command.equals("deleteAction.product")){
		          action = new deleteAction();
		          try {
		            forward = action.execute(request, response);   
		         } catch (Exception e) {
		            e.printStackTrace();
		         }
	       }
	       else if(command.equals("insertReqFormAction.product")){ 
		          action = new InsertReqFormAction();
		          try {
		            forward = action.execute(request, response);   
		         } catch (Exception e) {
		            e.printStackTrace();
		         }
	          
	          
	       }else if(command.equals("insertReqAction.product")){
		          action = new InsertReqAction();
		          try {
		            forward = action.execute(request, response);   
		         } catch (Exception e) {
		            e.printStackTrace();
		         }
	       } 
	       
	       	else if(command.equals("detailReqAction.product")){
		          action = new DetailReqAction();
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
