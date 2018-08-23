package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.parser.RecoveredRequiresStatement;

public class GngUpdateEnqReplyForm implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String e_seq= request.getParameter("e_seq");		
		request.setAttribute("e_seq", e_seq);
		
		ActionForward forward = new ActionForward();
		forward.setPath("enqureplyupdate.jsp");
		forward.setRedirect(false);
		
		return forward;
	}

}
