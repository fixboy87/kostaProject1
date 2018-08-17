package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GngInqInsertFormAction implements GngAction {

	@Override
	public GngActionFoward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
		System.out.println(2);
		
		GngActionFoward forward = new GngActionFoward();
		
		forward.setRedirect(false);
		forward.setPath("/pages/gng_page/enquire.jsp");
	
		return forward;
	}

}
