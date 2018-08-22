package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.service.ReviewService;

public class Review_insertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ReviewService service = ReviewService.getInstance();
		service.insertReviewService(request);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(true);
		forward.setPath("review_list.do");
		
		
		return forward;
	}

}
