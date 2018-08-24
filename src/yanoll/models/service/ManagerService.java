package yanoll.models.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.ManagementDao;
import yanoll.models.vo.ManagementPaging;
import yanoll.models.vo.ReservationSearch;
import yanoll.models.vo.UserSearch;

public class ManagerService {
	private static final int PAGE_SIZE = 5;
	private static ManagerService service = new ManagerService();
	private static ManagementDao dao;
	
	public static ManagerService getInstance(){
		dao = ManagementDao.getInstance();
		return service;
	}
	
	public ManagementPaging listBoard(int requestPage, HttpServletRequest request){
		

		
		//페이지당 글갯수, 총글갯수, 총페이지수, 현재페이지, 시작페이지, 마지막페이지
		//startRow, endRow => 데이터 출력(List)
		
		 
		
		//총글갯수 구하기
		int totalCount = dao.countBoard();
		//총페이지수 구하기
		int totalPageCount = totalCount/PAGE_SIZE;
		
		System.out.println(totalCount +" 카운트 서비스 체크");
		System.out.println(totalPageCount +"페이지 서비스 체크");
		
		if(totalCount%PAGE_SIZE > 0){
			totalPageCount++;
		}
		
		//시작페이지,마지막페이지 구하기: 시작페이지 = 현재페이지 - (현재페이지 -1) %5 
		int startPage = requestPage - (requestPage -1) % 5;
		int endPage = startPage +4;
		if(endPage > totalPageCount){
			endPage = totalPageCount;
		}
		
		//시작글 구하기 : (현재페이지 -1) * 페이지당 글갯수
		int startRow = (requestPage -1) * PAGE_SIZE;
		
		List<ReservationSearch> list = dao.listBoard(startRow);
		ManagementPaging listModel = new ManagementPaging(list, requestPage, totalPageCount, startPage, endPage);
		
			System.out.println(requestPage + "서비스 ㅊㅊㅊㅊㅊㅊㅊㅊㅊㅊ");
		return listModel;
	}
	
}
