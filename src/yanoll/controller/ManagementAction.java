package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.service.ManagerService;
import yanoll.models.vo.ReservationSearch;


public class ManagementAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ManagerService service = ManagerService.getInstance();
		
		List<ReservationSearch> list =null;
		list = service.listBoard();
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setPath("/pages/KJW_page/Management.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
