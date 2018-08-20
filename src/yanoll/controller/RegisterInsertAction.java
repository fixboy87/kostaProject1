package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.vo.Users;

public class RegisterInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		UserService service = UserService.getInstance(); //service 인자를 할당받음
		
		service.RegisterUserService(request);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/pages/title.jsp");
		forward.setRedirect(false);

		return forward;
	}

}
