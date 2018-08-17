package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Board;

public class GngListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
		int user_no =0;
	    
	    GngEnquireService service = GngEnquireService.getinstance();
	    List<Enquire_Board> list = service.list(user_no, request);
	    
	    request.setAttribute("list", list);
	    
	    ActionForward forward = new ActionForward();
	    
	    forward.setRedirect(false);
	    forward.setPath("/pages/gng_page/enquirelist.jsp");
	    
		return forward;
	}

}