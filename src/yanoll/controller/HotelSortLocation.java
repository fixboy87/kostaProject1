package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import oracle.net.aso.f;
import yanoll.models.service.HotelService;
import yanoll.models.vo.Hotel;

public class HotelSortLocation implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HotelService service = HotelService.getInstance();
		List<Hotel> list = service.hotelSortLocation();
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/pages/listpage/HotelSortLocation.jsp");
		
		return forward;
	}

}
