package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GngInqInsertFormAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
		System.out.println(2);
		
		
		HttpSession session= request.getSession();
		String id = (String)session.getAttribute("id");
		
		session.setAttribute("id", id);
		System.out.println(id);
		
		ActionForward forward = new ActionForward();	
		forward.setRedirect(false);
		forward.setPath("/pages/gng_page/enquire.jsp");
	
		return forward;
	}

}
