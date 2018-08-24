package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.vo.Enquire_Board;
import yanoll.models.vo.Enquire_Reply;

public class GngDeleteEnqReply implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String str = request.getParameter("r_seq");

		int r_seq = 0;
		if (str != null) {
			r_seq = Integer.parseInt(str);
		}
		

		Enquire_BoardDao dao = Enquire_BoardDao.getinstance();

		dao.deleteEnqReply(r_seq);

		
		
		System.out.println(r_seq);

		ActionForward forward = new ActionForward();
		forward.setPath("GngListAction.do");
		forward.setRedirect(true);

		return forward;
	}

}
