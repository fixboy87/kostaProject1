package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class RoomListAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		/*RoomListService service = RoomListService.getInstance();  // roonlistservice 아직안만듬 
*/		
		ActionForward forward = new ActionForward();
		forward.setPath("/pages/KJW_page/roomList.jsp");
		forward.setRedirect(false);
		return forward;
	}
}
