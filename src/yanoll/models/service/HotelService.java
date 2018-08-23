package yanoll.models.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.HotelDao;
import yanoll.models.vo.Hotel;
import yanoll.models.vo.SearchCondition;

public class HotelService {
	
	private static HotelService service = new HotelService();
	private static HotelDao dao;
	
	public static HotelService getInstance(){
		dao = HotelDao.getInstance();
		return service;
	}
	public List<Hotel> hotelList() throws Exception{
	
		List<Hotel> list = dao.hotel();
		
		return list;
	}
	
	public List<Hotel> hotelSortLocation(String h_location) throws Exception{
		
		/*HttpServletRequest request = null;
		HttpSession session = request.getSession();
		h_location = (String) session.getAttribute("h_location");*/
		
	
		System.out.println(h_location + "서비스 체크");
		
		List<Hotel> list = dao.SortLocation(h_location);
		return list;
	}
	
	public List<Hotel> hotelPriceSelector(SearchCondition condition){
		
		List<Hotel> list = dao.hotelPriceSelector(condition);
		
		return list;
	}
	
}

















