package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.ReviewDao;
import yanoll.models.vo.Review_Board;

public class Review_insertFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		Review_Board board =new Review_Board();
		board.setBooking_num(Integer.parseInt(request.getParameter("booking_num")));
		board.setId(id);
		board.setStay_day(Integer.parseInt(request.getParameter("stay_day")));
		/*호텔이름*/
		ReviewDao dao = ReviewDao.getInstance();
		String hotle_name = dao.searchHotle_name(Integer.parseInt(request.getParameter("h_no")));
		board.setHotle_name(hotle_name);
		/*userno*/
		int userNo =dao.search_userNo(id);
		board.setUserNo(userNo);
		System.out.println(board);
		request.setAttribute("board", board);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/pages/syj_page/review_insertForm.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
