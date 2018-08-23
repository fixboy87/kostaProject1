package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeregisterAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		UserService service = UserService.getInstance();
		
		service.deregister_p(request);
		
		forward.setPath("/pages/account/deregister.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
