package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Board;
import yanoll.models.vo.Enquire_List;

public class GngenqListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		response.setCharacterEncoding("utf-8");

		Enquire_BoardDao dao = Enquire_BoardDao.getinstance();
		HttpSession session = request.getSession();
		String id= (String)session.getAttribute("id");

		System.out.println(id);
		
		List<Enquire_Board> listModel = dao.enquireList2(id);
		request.setAttribute("listModel", listModel);

		ActionForward forward = new ActionForward();
		forward.setPath("/pages/gng_page/enquirelist.jsp");

		forward.setRedirect(false);

		return forward;
	}

}