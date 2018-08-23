package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.service.HotelService;
import yanoll.models.vo.Hotel;
import yanoll.models.vo.SearchCondition;

public class HotelPriceSelectorAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		int low_price = Integer.parseInt(request.getParameter("low_price"));
		int max_price = Integer.parseInt(request.getParameter("max_price"));
		String destination = request.getParameter("destination");
		

		System.out.println(low_price+ "  Action페이지 데이터 체크 low_price");
		System.out.println(max_price+ "  Action페이지 데이터 체크 max_price");
		System.out.println(destination+ "  Action페이지 데이터 체크 destination");
		
		SearchCondition condition = new SearchCondition();
		
		condition.setLow_price(low_price);
		condition.setMax_price(max_price);
		condition.setDestination(destination);
		
		HotelService service = HotelService.getInstance();
		List<Hotel> list = service.hotelPriceSelector(condition);
		
		request.setAttribute("listPrice", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/pages/listpage/HotelPriceSelector.jsp?low_price="+low_price+"&max_price="+max_price );
		
		return forward;
	}
}

