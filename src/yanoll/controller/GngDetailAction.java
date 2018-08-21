package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.vo.Enquire_Board;

public class GngDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String str= request.getParameter("e_seq");
		int e_seq=0;
		
		if(str != null){
			e_seq=Integer.parseInt(str);
			
		}
		Enquire_BoardDao dao = Enquire_BoardDao.getinstance();
		
		Enquire_Board 	board = dao.EnquireDetail(e_seq);
		request.setAttribute("board", board);
		
		ActionForward forward= new ActionForward();
		
		forward.setPath("enquiredetail.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
