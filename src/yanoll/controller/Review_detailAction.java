package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.ReviewDao;
import yanoll.models.vo.Review_Board;

public class Review_detailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		String str = request.getParameter("r_no");
			int r_no =0;
			
			ReviewDao dao = ReviewDao.getInstance();
			Review_Board board = new Review_Board();
			
			if(str!=null){
				r_no = Integer.parseInt(str);
				board = dao.detailReview(r_no);
				System.out.println("디테일 보드"+board);
				request.setAttribute("board", board);
			}
			
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/pages/syj_page/review_detail.jsp");
		
		return forward;
	}

}
