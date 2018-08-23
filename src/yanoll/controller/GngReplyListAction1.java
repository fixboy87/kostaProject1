package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Reply;

public class GngReplyListAction1 implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	   
	    
	    String str= request.getParameter("e_seq");
	    System.out.println(str);
	    int e_seq=0;
	    if(str !=null){
	    	e_seq= Integer.parseInt(str);
	    	
	    }
	    
	    Enquire_BoardDao dao= Enquire_BoardDao.getinstance();
	    List<Enquire_Reply> reply= dao.EnqReplyList(e_seq);
	    
	    request.setAttribute("reply", reply);
		
	    ActionForward forward= new ActionForward();
	    forward.setPath("/pages/gng_page/enqreplylist.jsp");
	    forward.setRedirect(false);
	    
		return forward;
	}

}
