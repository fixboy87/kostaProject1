package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.vo.User;

public class RegisterInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
		String email = (String)request.getAttribute("email");
		String id = (String)request.getAttribute("id");
		String password = (String)request.getAttribute("password");
		String tel = (String)request.getAttribute("tel");
		
		String birth = (String)request.getParameter("birth");
		String gender = (String)request.getParameter("gender");
		
		
	}

}
