package yanoll.models.service;

import java.util.List;


import yanoll.models.dao.HotelDao;
import yanoll.models.vo.Hotel;

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
	
	public List<Hotel> hotelSortLocation() throws Exception{
		
		List<Hotel> list = dao.hotel();
		
		return list;
	}
}
