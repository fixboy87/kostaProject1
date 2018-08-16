package yanoll.models.service;

import javax.servlet.http.HttpServletRequest;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.vo.Enquire_Board;

public class GngEnquireService {
	private static GngEnquireService service= new GngEnquireService();
	private static Enquire_BoardDao dao;
	
	public static GngEnquireService getinstance(){
		dao= Enquire_BoardDao.getinstance();
		return service;
	}
	public int insertEnquireService(HttpServletRequest request) throws Exception{
		Enquire_Board board= new Enquire_Board();
		
		return dao.insertEnquire(board);
	}

}
