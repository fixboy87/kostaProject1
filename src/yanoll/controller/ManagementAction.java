package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.service.ManagerService;
import yanoll.models.vo.ManagementPaging;


public class ManagementAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("utf-8");
		
		ManagerService service = ManagerService.getInstance();
		
		String pageNum = request.getParameter("pageNum");
		System.out.println(pageNum + "액션 pageNum 체크");
		if(pageNum == null){
			pageNum = "1";
		}
		
		int requestPage = Integer.parseInt(pageNum);
		
		
		ManagementPaging listModel = service.listBoard(requestPage, request);
		
		System.out.println(requestPage);
		System.out.println("컨트롤러 체크");
		
		request.setAttribute("listModel",listModel );
		
		ActionForward forward = new ActionForward();
		forward.setPath("/pages/KJW_page/Management.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
