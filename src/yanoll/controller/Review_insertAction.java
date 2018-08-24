package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import yanoll.models.dao.ReviewDao;
import yanoll.models.service.ReviewService;

public class Review_insertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");

		//ReviewDao dao = ReviewDao.getInstance();
		ReviewService service = ReviewService.getInstance();
		int re = -1;
		re=service.insertReviewService(request);
		System.out.println("[ Review_insertAction ]저장 완룐 됐으면 re=1일것이다 얍"+re);
		 

		/*if (re==1) {
			int booking_num = Integer.parseInt(request.getParameter("booking_num"));
			dao.change_condition(booking_num);
		}*/
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setPath("review_list.do");
		
		return forward;
	}

}
