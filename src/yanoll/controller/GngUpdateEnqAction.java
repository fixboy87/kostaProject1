package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Board;

public class GngUpdateEnqAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		GngEnquireService service= GngEnquireService.getinstance();
		request.setCharacterEncoding("utf-8");
		
		System.out.println(2);
		
		String str = request.getParameter("e_seq");
		int e_seq = 0;
		if (str != null) {
			e_seq = Integer.parseInt(str);

		}
	
		Enquire_BoardDao dao= Enquire_BoardDao.getinstance();
		Enquire_Board board= dao.EnquireDetail(e_seq);
		request.setAttribute("board", board);
		System.out.println(board);
		
		service.updateEnquire(request);
		ActionForward forward = new ActionForward();
		forward.setPath("GngListAction.do");
		forward.setRedirect(true);
		
		return forward;
	}

}
