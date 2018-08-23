package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Board;

public class GngInqInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	GngEnquireService service = GngEnquireService.getinstance();	
	request.setCharacterEncoding("utf-8");
	service.insertEnquireService(request);
    

	ActionForward forward= new ActionForward();
	forward.setPath("GngListAction.do");
	forward.setRedirect(true);
	
	return forward;
	
	}
	
}
