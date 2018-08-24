package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.ReviewDao;
import yanoll.models.vo.Review_Board;

public class Review_updateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		ReviewDao dao = ReviewDao.getInstance();
		int re = -1;
		System.out.println("request로 updateAction으로 가져온");
		System.out.println(request.getParameter("r_title"));
		System.out.println(request.getParameter("r_content"));
		System.out.println(request.getParameter("r_no"));
		Review_Board board = new Review_Board();
		board.setR_no(Integer.parseInt(request.getParameter("r_no")));
		board.setR_title(request.getParameter("r_title"));
		board.setR_content(request.getParameter("r_content"));
		System.out.println("수정 정보 출력"+board);
		
		HttpSession session = request.getSession();
		Integer h_no = (Integer)session.getAttribute("h_no");
		
		
		ActionForward forward = new ActionForward();
		dao.updateReview(board);
		
			
		
		
		/*forward.setPath("review_list.do");*/
		forward.setPath("review_list.do?h_no="+h_no);

		forward.setRedirect(true);
		return forward;
	}

}
