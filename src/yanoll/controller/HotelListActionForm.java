package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.service.HotelService;
import yanoll.models.vo.Hotel;

public class HotelListActionForm implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HotelService service = HotelService.getInstance();
		List<Hotel> list =  service.hotelList();
		
		System.out.println("1");
		
		//HttpSession session = request.getSession();
		//session.setAttribute("hotelSession", service.hotelList());
		//request.setAttribute("Hotel", service.hotelList());
		
		/*for(int i = 0 ; i<service.hotelList().size();i++){
			service.hotelList().get(i);
			request.setAttribute("listH", service.hotelList().get(i));
		}*/
		
		request.setAttribute("list", list);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/pages/listpage/listPage.jsp");
		return forward; 
	}

}
