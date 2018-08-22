package yanoll.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.Enquire_BoardDao;
import yanoll.models.service.GngEnquireService;
import yanoll.models.vo.Enquire_Reply;

public class GngReplyListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	   
	    
	    String str= request.getParameter("e_seq");
	    int e_seq=0;
	    if(str !=null){
	    	e_seq= Integer.parseInt(str);
	    	
	    }
	    
	    Enquire_BoardDao dao= Enquire_BoardDao.getinstance();
	    List<Enquire_Reply> reply= dao.EnqReplyList(e_seq);
	    
	    request.setAttribute("reply", reply);
		
	    ActionForward forward= new ActionForward();
	    forward.setPath("enqreplylist.jsp");
	    forward.setRedirect(false);
	    
		return forward;
	}

}
