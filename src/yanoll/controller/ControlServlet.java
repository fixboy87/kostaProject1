package yanoll.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")
public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ControlServlet() {
        super();        
    }
    
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	//insertForm.do, insertAction.do, list.do. detail.do
    	String requestURI = request.getRequestURI();
    	//System.out.println(requestURI);//    /MVC/insertForm.do
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length()+1);
    	System.out.println(command);//   insertForm.do
    	
    	Action action = null;
    	ActionForward forward = null;
    	
    	if(command.equals("titlePage.do")){
    		action = new TitlePageAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if (command.equals("Insertenquire.do")) {
			action = new GngInqInsertFormAction();
			try {
				forward = action.execute(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(command);
			
		} else if (command.equals("GngInqInsertAction")) {
			action = new GngInqInsertAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("registerTypeForm.do")) {//회원유형 선택창
			   action = new RegisterTypeFormAction();
			   try {
			      forward = action.execute(request, response);
			      
			   } catch (Exception e) {
			      e.printStackTrace();
			   }
		}
    	
    	if(forward != null){
    		if(forward.isRedirect()){
    			response.sendRedirect(forward.getPath());
    		}else{
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






