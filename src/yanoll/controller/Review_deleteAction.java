package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.ReviewDao;

public class Review_deleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Integer h_no = (Integer)session.getAttribute("h_no");

		ReviewDao dao = ReviewDao.getInstance();
		String str = request.getParameter("r_no");
		System.out.println("1.엑션 request로 받음"+str);
		int r_no =0;
		int re = 0;
		
		ActionForward forward = new ActionForward();
		if (str!=null) {
			System.out.println("2.액션의 if문들어옴");
			r_no = Integer.parseInt(str);
			System.out.println("dao호출"+r_no);
			re=dao.deleteReivew(r_no);
			
			if(re>0){
				forward.setRedirect(true);
				/*forward.setPath("review_list.do");*/
				forward.setPath("review_list.do?h_no="+h_no);

			}
		}
		return forward;
	}

}
