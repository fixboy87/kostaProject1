package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String type = request.getParameter("type");
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		if(type.equals("personal")) {
			forward.setPath("/pages/account/registerForm.jsp?type=personal");
		} else if (type.equals("enterprise")) {
			forward.setPath("/pages/account/registerForm.jsp?type=enterprise");
		} 
		
		return forward;
	
	}

}
