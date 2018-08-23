package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.vo.Hotel;
import yanoll.models.vo.Users;

public class MyPageAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		UserService service = UserService.getInstance();
		
		HttpSession session = request.getSession();
		String type = (String)session.getAttribute("type");
		boolean wrongAccess = false;

		Users user = new Users();
		Hotel hotel = new Hotel();
		
		if(type.equals("personal")) {
			user = service.detailUser_p(request);
			request.setAttribute("user", user);
		} else if (type.equals("enterprise")) {
			hotel = service.detailUser_e(request);
			request.setAttribute("hotel", hotel);
		} else {
			wrongAccess = true;
			//예외처리
		}
		
		if(user==null || hotel==null) {
			wrongAccess = true;
			//예외처리
		}

		forward.setRedirect(false);
		forward.setPath("/pages/account/myPage.jsp");
		if(wrongAccess == true) {
			//에러페이지
		}
		return forward;
	}
}
