package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Board;

public class GngDeleteEnquire implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
		String str = request.getParameter("e_seq");
		int e_seq=0;
		if(str != null){
			e_seq=Integer.parseInt(str);
		}
		System.out.println(e_seq);
		Enquire_BoardDao dao= Enquire_BoardDao.getinstance();
		int re=0;
		re= dao.deleteEnquireBoard(e_seq);
		System.out.println(re);


		ActionForward forward = new ActionForward();
		forward.setPath("GngListAction.do");
		forward.setRedirect(true);  //고침
		
		return forward;
	}

}
