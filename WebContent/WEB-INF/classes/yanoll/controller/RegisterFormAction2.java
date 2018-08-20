package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterFormAction2 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String type = (String)request.getParameter("type");
		//자바빈으로 값을 넘겨야 함
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(true);

		if(type == "personal") {
			forward.setPath("/pages/account/registerForm2.jsp?type=personal");
		} else if (type == "enterprise") {
			forward.setPath("/pages/account/registerForm2.jsp?type=enterprise");
		} else {
			// 에러 페이지로 리다이렉트
		}
		
		return forward;
	}

}
