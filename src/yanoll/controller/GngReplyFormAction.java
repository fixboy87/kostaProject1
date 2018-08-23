package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.vo.Enquire_Board;

public class GngReplyFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    
		request.setCharacterEncoding("utf-8");
		String str = request.getParameter("e_seq");
		int e_seq = 0;
		if (str != null) {
			e_seq = Integer.parseInt(str);

		}
		
		Enquire_BoardDao dao= Enquire_BoardDao.getinstance();
		Enquire_Board board= dao.EnquireDetail(e_seq);
		request.setAttribute("board", board);
		
		System.out.println(board);
		
		ActionForward forward = new ActionForward();	    
	    forward.setRedirect(false);
	    forward.setPath("/pages/gng_page/enquire_reply.jsp");
	    
		return forward;
	}

}
