package yanoll.models.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.ListModel;

import org.apache.coyote.Request;

import com.oreilly.servlet.MultipartRequest;

import oracle.sql.TIMESTAMPLTZ;
import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.vo.Enquire_Board;
import yanoll.models.vo.Enquire_List;
import yanoll.models.vo.Enquire_Reply;
import yanoll.models.vo.Enquire_Search;

public class GngEnquireService {
	private static final int PAGE_SIZE =10;
	private static GngEnquireService service= new GngEnquireService();
	private static Enquire_BoardDao dao;
	
	public static GngEnquireService getinstance(){
		dao= Enquire_BoardDao.getinstance();
		return service;
	}
	
	public int insertEnquireService(HttpServletRequest request) throws Exception{
		
		Enquire_Board board= new Enquire_Board();
		
		HttpSession session = request.getSession();
		
		board.setHotel_name(request.getParameter("hotel_name"));
		board.setE_title(request.getParameter("e_title"));
		board.setE_contents(request.getParameter("e_contents"));
			
		return dao.insertEnquire(board);
		
	}
	
	
	public Enquire_List listBoardService(int requestPage , HttpServletRequest request) throws Exception {
		HttpSession session= request.getSession();
		Enquire_Search search = new Enquire_Search();
		
		if(request.getParameter("area") !=null){
			session.removeAttribute("search");
			search.setArea(request.getParameter("area"));
			search.setSearchKey("%" + request.getParameter("serchKey"+ "%"));
			session.setAttribute("search", search);
			
		}else if((Enquire_Search)session.getAttribute("search") !=null){
			
			search=(Enquire_Search)session.getAttribute("search");
		}
		
		int totalCount = dao.countBoard(search);
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE>0){
			totalPageCount++;
		}
		
		int startPage = requestPage-(requestPage-1)%5;
		int endPage = startPage+4;
		if(endPage>totalPageCount){
			
			endPage=totalPageCount;
		}
		
		int startRow = (requestPage-1)*PAGE_SIZE;
		List<Enquire_Board> list = dao.EnquireList(search, startRow);
		Enquire_List listModel = new Enquire_List(list, requestPage, totalPageCount, startPage, endPage);
		
		return listModel;
		
	}
	
	public int insertEnqReply(HttpServletRequest request){
		Enquire_Reply reply = new Enquire_Reply();
		/*HttpSession Session = request.getSession();*/
		
	
		reply.setE_seq(Integer.parseInt(request.getParameter("e_seq")));
		reply.setR_contents(request.getParameter("r_contents"));
	
		return dao.insertEnquireReply(reply);
		
	}
	
	
	
}
