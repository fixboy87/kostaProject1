package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.Enquire_BoardDao;

public class GngDeleteEnqReply implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String str = request.getParameter("e_seq");
		int e_seq=0;
		if(str != null){
			e_seq=Integer.parseInt(str);
		}
		
		Enquire_BoardDao dao= Enquire_BoardDao.getinstance();
		int re=0;
		re= dao.deleteEnqReply(e_seq);
		
		ActionForward forward = new ActionForward();
		forward.setPath("GngListAction.do");
		forward.setRedirect(true);  //고침
		
		return forward;
	}

}
