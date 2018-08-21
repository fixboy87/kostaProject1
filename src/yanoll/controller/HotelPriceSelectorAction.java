package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.service.HotelService;
import yanoll.models.vo.Hotel;

public class HotelPriceSelectorAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		int low_price = Integer.parseInt(request.getParameter("low_price"));
		int max_price = Integer.parseInt(request.getParameter("max_price"));
		
		
		
		System.out.println(low_price+ "  Action페이지 데이터 체크");
		System.out.println(max_price+ "  Action페이지 데이터 체크");
		
		session.setAttribute("low_price", low_price);
		session.setAttribute("max_price", max_price);
		
		
		HotelService service = HotelService.getInstance();
		List<Hotel> list = service.hotelPriceSelector(low_price, max_price);
		
		request.setAttribute("listPrice", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/pages/listpage/HotelPriceSelectorAction.jsp?low_price="+low_price+"&max_price="+max_price );

		return forward;
	}
}
/*name="checkOut"
name="checkIn"
Destination*/