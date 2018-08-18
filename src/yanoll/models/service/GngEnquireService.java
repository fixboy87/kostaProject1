package yanoll.models.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.vo.Enquire_Board;
import yanoll.models.vo.Enquire_Search;

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
	
	public List<Enquire_Board> list(int requestPage , HttpServletRequest request) throws Exception {
		HttpSession session= request.getSession();
		Enquire_Search search = new Enquire_Search();
		
		if(request.getParameter("area") !=null){
			session.removeAttribute("search");
			search.setArea(request.getParameter("area"));
			search.setSearchKey("%" + request.getParameter("serchKey"+ "%"));
			session.setAttribute("search", search);
			
		}
		
		List<Enquire_Board> list = dao.Enquirelist(re, startrow);
		
		return list;
		
	}
	
	

}
