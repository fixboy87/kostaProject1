package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.ReviewDao;
import yanoll.models.vo.Review_Board;

public class Review_listAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	      ReviewDao dao = ReviewDao.getInstance();
	      List<Review_Board> list = dao.listReview();
	     /* 
	      for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}
	   */
	 request.setAttribute("list", list);

	      
	      
	      ActionForward forward = new ActionForward();
	      forward.setRedirect(false);
	      forward.setPath("review_list.jsp");
	      
	      
	      return forward;
	   }

}
