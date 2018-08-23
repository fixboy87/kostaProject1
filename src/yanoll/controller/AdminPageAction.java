package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		UserService service = UserService.getInstance();
		
		forward.setPath("/pages/account/adminPage.jsp");
		forward.setRedirect(false);
		
		service.detailUser_e(request);
		
		return forward;
	}

}
