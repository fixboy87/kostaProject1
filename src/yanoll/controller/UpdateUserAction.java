package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.vo.Users;

public class UpdateUserAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		forward.setPath("myPageAction.do");
		forward.setRedirect(true);
		
		UserService service = UserService.getInstance();
		Users user = service.updateUser_p(request);
		request.setAttribute("user", user);
		
		return forward;
	}

}
