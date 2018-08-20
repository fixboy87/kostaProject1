package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class RegisterFormAction2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String type = (String)request.getParameter("type");

		String email = request.getParameter("email");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String tel = request.getParameter("tel");
		
		HttpSession session = request.getSession();
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);

		if(type == "personal") {
			forward.setPath("/pages/account/registerForm2.jsp?type=personal");
			
			session.setAttribute("email", email);
			session.setAttribute("id", id);
			session.setAttribute("tel", tel);
			session.setAttribute("password", password);
			
		} else if (type == "enterprise") {
			forward.setPath("/pages/account/registerForm2.jsp?type=enterprise");
			
			session.setAttribute("h_mail", email);
			session.setAttribute("h_name", id);
			session.setAttribute("h_phonenum", tel);
			session.setAttribute("h_password", password);
			
		} else {
			// 에러 페이지로 리다이렉트
		}
		
		return forward;
	}

}
