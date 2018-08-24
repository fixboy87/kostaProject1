package yanoll.models.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.ManagementDao;
import yanoll.models.vo.ManagementPaging;
import yanoll.models.vo.ReservationSearch;
import yanoll.models.vo.UserSearch;

public class ManagerService {
	private static final int PAGE_SIZE =2;
	private static ManagerService service = new ManagerService();
	private static ManagementDao dao;
	
	public static ManagerService getInstance(){
		dao = ManagementDao.getInstance();
		return service;
	}
	
	public List<ReservationSearch> listBoard(){
		List<ReservationSearch> list =null;
		list = dao.listBoard();
		return list;
	}
}
