package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		
		UserService service = UserService.getInstance();
		boolean result = service.loginUserService(request);
		
		if(result == true) {
			forward.setPath("titlePage.do");
		} else {
			forward.setPath("loginForm.do");
		}
		forward.setRedirect(true);
		return forward;
	}
}
