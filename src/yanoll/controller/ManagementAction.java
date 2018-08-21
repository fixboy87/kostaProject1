package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManagementAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		UserService service = UserService.getInstance();
		
		ActionForward forward = new ActionForward();
		forward.setPath("/pages/KJW_page/Management.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
