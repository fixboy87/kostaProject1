package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Board;

public class GngInqInsertAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	
	GngEnquireService service = GngEnquireService.getinstance();	
	service.insertEnquireService(request);
	
	System.out.println(10);
	
	ActionForward forward= new ActionForward();
	forward.setPath("/pages/gng_page/enquirelist.do");
	forward.setRedirect(true);
	
	return forward;
	
	}
	
}
