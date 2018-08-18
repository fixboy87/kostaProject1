package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.service.HotelService;

public class HotelListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HotelService service = HotelService.getInstance();
		service.hotelList();
		
		ActionForward forward = new ActionForward();
		
		return null; ///수정
	}

}
