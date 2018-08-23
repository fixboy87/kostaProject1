package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.Enquire_BoardDao;

public class GngUpdateEnqReplyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String str= request.getParameter("e_seq");
		
		int e_seq=0;
		if(str != null){
			e_seq = Integer.parseInt(str);
		}
		
		int re=0;
		Enquire_BoardDao dao= Enquire_BoardDao.getinstance();
		re= dao.updateRnqReply(e_seq);
		
		ActionForward forward = new ActionForward();
		forward.setPath("GngUpdateEnqReplyAction.do");
		forward.setRedirect(false);
		
		return forward;
	}

}
