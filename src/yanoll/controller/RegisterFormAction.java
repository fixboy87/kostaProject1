package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String type = request.getParameter("type");
		System.out.println(type);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);
		forward.setPath("/pages/account/registrationForm.jsp");
		return forward;
	
	}

}
