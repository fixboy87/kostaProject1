package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import yanoll.models.vo.Users;

public class UserService {
	
	private static UserService service = new UserService();
	private static UserDao dao;
	
	public static UserService getInstance() {
		dao = UserDao.getInstance();
		return service;
	}
	
	public int RegisterUserService(HttpServletRequest request) {
		Users user = new Users();
		
		HttpSession session = request.getSession();
		
		String type = request.getParameter("type");
		
		if(type.equals("personal")) { //세션에서 정보를 추출 및 객체를 생성
			user.setEmail((String)session.getAttribute("email"));
			user.setId((String)session.getAttribute("id"));
			user.setPassword((String)session.getAttribute("password"));
			user.setTel((String)session.getAttribute("tel"));
			user.setName((String)session.getAttribute("name"));
			
			String birth = (String)request.getParameter("birth");
			String gender = (String)request.getParameter("gender");
			
			if(!birth.equals(null)) {
				user.setDob((String)request.getParameter("birth"));
			}
			if(!gender.equals(null)) {
				user.setGender((String)request.getParameter("gender"));
			}
			session.invalidate(); //해당 세션을 만료시킴
			
			return dao.registerUser(user);
		} else if (type.equals("enterprise")) {//사업자의 경우
			//return 0;
		} else {//잘못된 접근
			//return 0;
		}
	}
}
