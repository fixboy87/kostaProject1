package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import oracle.net.aso.f;
import yanoll.models.service.HotelService;
import yanoll.models.vo.Hotel;

public class HotelSortLocationAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession();
	 	String h_location = request.getParameter("hotelSelect");
	 	
	 	System.out.println(h_location+"getParameter 가져옴");
	 	
		//String h_location = (String) session.getAttribute("h_location");
	 	
		System.out.println(h_location + "action 컨트롤러");
		//session.setAttribute("h_location", h_location);

		HotelService service = HotelService.getInstance();
		List<Hotel> list = service.hotelSortLocation(h_location);
		
		request.setAttribute("listSort", list);

		ActionForward forward = new ActionForward();
		System.out.println("페이지이동됨?  액션");
		forward.setRedirect(false);
		forward.setPath("/pages/listpage/HotelSortLocation.jsp?hotelSelect=" + h_location);

		return forward;
	}

}
