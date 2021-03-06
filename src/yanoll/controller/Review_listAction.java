package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.ReviewDao;
import yanoll.models.vo.Review_Board;

public class Review_listAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		
		
		
		ReviewDao dao = ReviewDao.getInstance();
		/*List<Review_Board> list = dao.listReview();*/
		
		int h_no = Integer.parseInt(request.getParameter("h_no"));
		String hotle_name = dao.searchHotle_name(h_no);
		List<Review_Board> list = dao.listReview(hotle_name);
	   /* request.setAttribute("h_no", h_no);*/
		
	    HttpSession session = request.getSession();
	    session.setAttribute("h_no", h_no);
	    
	     /* for (int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}*/
	  
		request.setAttribute("list", list);

	      
	      ActionForward forward = new ActionForward();
	      forward.setRedirect(false);
	      forward.setPath("/pages/syj_page/review_list.jsp");
	      
	      
	      return forward;
	   }

}
