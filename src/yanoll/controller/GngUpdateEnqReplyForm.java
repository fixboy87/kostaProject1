package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GngUpdateEnqReplyForm implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String str= request.getParameter("e_seq");
		System.out.println(str);
		int e_seq=0;
		if(str != null){
			e_seq=Integer.parseInt(str);
		}
		
		ActionForward forward = new ActionForward();
		forward.setPath("enqureplyupdate.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
