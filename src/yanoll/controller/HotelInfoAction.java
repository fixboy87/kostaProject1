package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class HotelInfoAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		UserService service = UserService.getInstance();
		
		ActionForward forward = new ActionForward();
		forward.setPath("/pages/KJW_page/Hotel_Info.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
