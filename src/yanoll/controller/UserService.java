package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import yanoll.models.vo.User;

public class UserService {
	
	private static UserService service = new UserService();
	private static UserDao dao;
	
	public static UserService getInstance() {
		dao = UserDao.getInstance();
		return service;
	}
	
	public int RegisterUserService(HttpServletRequest request) {
		User user = new User();
		
		HttpSession session = request.getSession();
		
		String type = (String)request.getAttribute("type");
		
		if(type.equals("personal")) { //세션에서 정보를 추출 및 객체를 생성
			user.setEmail((String)request.getAttribute("email"));
			user.setId((String)request.getAttribute("id"));
			user.setPassword((String)request.getAttribute("password"));
			user.setTel((String)request.getAttribute("tel"));
			user.setName((String)request.getAttribute("name"));
			
			String birth = (String)request.getParameter("birth");
			String gender = (String)request.getParameter("gender");
			
			if(!birth.equals(null)) {
				user.setDob((String)request.getParameter("birth"));
			}
			if(!gender.equals(null)) {
				user.setGender((String)request.getParameter("gender"));
			}
			
			
			
			session.invalidate(); //해당 세션을 만료시킴
		}
	}
}
