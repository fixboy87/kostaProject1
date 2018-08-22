package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.service.UserService;
import yanoll.models.vo.Users;

public class RegisterInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		UserService service = UserService.getInstance(); //service 인자를 할당받음
		
		ActionForward forward = new ActionForward();
		forward.setPath("/pages/title.jsp");
		forward.setRedirect(false);

		service.RegisterUserService(request);

		return forward;
	}
}
