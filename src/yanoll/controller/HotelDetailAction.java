package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.service.HotelService;
import yanoll.models.vo.Hotel;
import yanoll.models.vo.Hotel_room;

public class HotelDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int h_no = Integer.parseInt(request.getParameter("h_no"));
		
		HotelService service =HotelService.getInstance();
		List<Hotel_room> list =service.hotelDetailList(h_no);
		
		System.out.println("HotelDetailAction  " + h_no);
		
		
		request.setAttribute("h_no", h_no);
		request.setAttribute("detail", list);
		ActionForward forward = new ActionForward();
		System.out.println("페이지이동됨?  액션");
		forward.setRedirect(false);
		forward.setPath("/pages/listpage/detailPage.jsp?h_no="+h_no );
		
		return forward;
	}

}
