package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface GngAction {

	public GngActionFoward execute(HttpServletRequest request, HttpServletResponse response)
	throws Exception;
	
}
