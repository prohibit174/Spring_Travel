package travel.users.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import travel.users.action.Action;
import travel.users.action.ActionForward;
import travel.users.action.IdCheckAction;
import travel.users.action.JoinAction;
import travel.users.action.JoinFormAction;
import travel.users.action.UserAction;


@WebServlet("*.users")
public class UsersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UsersController() {
        super();
        
    }

	public void doProcess(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
		String requestURI = request.getRequestURI();

		
	/*	String path = request.getContextPath();
		//travelProject
*/		String contextPath = request.getContextPath();
    	//getContextPath를 통해서 컨텍스트 경로를 가져옴.
    
    	
    	String command = requestURI.substring(contextPath.length()+1);
    	/*전체 경로에서 context경로의 뒤에 있는 /까지 포함하기위해서 +1을 넣어줌.
    	context의 길이만큼 자르고 +1을 하면 /부터 t까지 잘림.
    	+1안하면 /MVC_project   /isert.do가 됨
    	/MVC_project를 잘라냄.*/
    	System.out.println(command);
    	//잘라내고 남은 필요한 url만 잘라왔음.
    	
    	
    	
    	
    	ActionForward forward= null;
    	Action action= null;
    	
    	if(command.equals("JoinForm.users")){
    		//해당하는 action을 호출.
    		action = new JoinFormAction();
    		
    		try {
    			forward = action.execute(request, response);
        		//이 forward를 통해서 redirect안한다, jsp로 가겠다는 내용을 가지고있음.
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("JoinAction.users")){
    		action = new JoinAction();
    		//얘 안됩니다.....T-T UserAction으로 가세여
    		try {
    			forward = action.execute(request, response);
    			
			} catch (Exception e) {
				e.printStackTrace();
			}
    		
    	}else if(command.equals("IdCheckAction.users")){
    		action = new IdCheckAction();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("UserAction.users")){
    		action = new UserAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	
    	}
   
    	
    	if(forward!=null){
    		//forward가 null이 아니라는건 한번 실행해봤다.
    		if(forward.isRedirect()){
    			//redirect로 연결해달라.
    			response.sendRedirect(forward.getPath());
    		}else{
    			//dispatch시키겠다.
    			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
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
