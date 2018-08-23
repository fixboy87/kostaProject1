package yanoll.controller;

import java.util.List;

import javax.jws.soap.SOAPBinding.Use;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.ReviewDao;
import yanoll.models.vo.Booking;
import yanoll.models.vo.Users;

public class Review_checkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		List<Booking> list = null;
		ReviewDao dao =ReviewDao.getInstance();
		ActionForward forward = new ActionForward();
		
		if(id!=null){
			System.out.println(id);
			list = dao.listCheck(id);
			
			System.out.println("액션에서 리스트 받아서 출력 확인");
			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i));
			}
			if(list.size()>=0){
				System.out.println("작성 가능한 목록 ㅇ 가능 목록으로 감");
				request.setAttribute("list", list);
				forward.setPath("/pages/syj_page/check_list.jsp");	
				forward.setRedirect(false);
			}else {
				System.out.println("작성 가능한 목록 x 후기 목록으로 감");
				forward.setPath("review_list.do");
				forward.setRedirect(true);
			}
			
		}else {
			System.out.println("로그인 안돼 있음");
			
			forward.setPath("loginForm.do");
			forward.setRedirect(true);
		}
		
		return forward;
	}

}
