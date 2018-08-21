package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Board;
import yanoll.models.vo.Enquire_List;

public class GngListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("utf-8");

		
	  GngEnquireService service = GngEnquireService.getinstance();

	    String pageNum= request.getParameter("pageNum");
	    if(pageNum == null) {
	    	pageNum ="1";
	    }
	    
	    int requestPage = Integer.parseInt(pageNum);
	    
	    Enquire_List listModel = service.listBoardService(requestPage, request);
	    
	    request.setAttribute("listModel", listModel);

	    
	    ActionForward forward = new ActionForward();
	    forward.setPath("enquirelist.jsp");
	    
	    forward.setRedirect(false);
	   
	    
		return forward;
	}

}