package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Board;

public class GngInqInsertAction implements GngAction {

	@Override
	public GngActionFoward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	GngEnquireService service = GngEnquireService.getinstance();
	
	service.insertEnquireService(request);
	
	GngActionFoward forward= new GngActionFoward();
	forward.setPath("title.do");
	
	
	forward.setRedirect(true);
	
	return forward;
	}
	
}
