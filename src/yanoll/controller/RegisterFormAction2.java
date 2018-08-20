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
		String name = request.getParameter("name");
		
		HttpSession session = request.getSession();
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);

		if(type.equals("personal")) {
			forward.setPath("/pages/account/registerForm_p.jsp");
			
			session.setAttribute("email", email);
			session.setAttribute("id", id);
			session.setAttribute("tel", tel);
			session.setAttribute("password", password);
			session.setAttribute("name", name);
			
		} else if (type.equals("enterprise")) {
			forward.setPath("/pages/account/registerForm_e.jsp");
			
			session.setAttribute("h_mail", email);
			session.setAttribute("h_id", id);
			session.setAttribute("h_phonenum", tel);
			session.setAttribute("h_password", password);
			session.setAttribute("h_name", name);
			
		} else {
			// 에러 페이지로 리다이렉트
		}
		
		return forward;
	}

}
