package yanoll.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import yanoll.models.dao.UserDao;
import yanoll.models.vo.Hotel;
import yanoll.models.vo.Login;
import yanoll.models.vo.Users;

public class UserService {
	
	private static UserService service = new UserService();
	private static UserDao dao;
	
	public static UserService getInstance() {
		dao = UserDao.getInstance();
		return service;
	}
	
	public int RegisterUserService(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		String type = request.getParameter("type");
		
		if(type.equals("personal")) { //세션에서 정보를 추출 및 객체를 생성
			Users user = new Users();
			
			user.setEmail((String)session.getAttribute("email"));
			user.setId((String)session.getAttribute("userId"));
			user.setPassword((String)session.getAttribute("password"));
			user.setTel((String)session.getAttribute("tel"));
			user.setName((String)session.getAttribute("name"));
			
			user.setBirth((String)request.getParameter("birth"));
			user.setGender((String)request.getParameter("gender"));
			
			
			session.invalidate(); //해당 세션을 만료시킴
			return dao.registerUser_p(user);
			
		} else if (type.equals("enterprise")) {//사업자의 경우
			Hotel hotel = new Hotel();
			
			hotel.setH_mail((String)session.getAttribute("h_mail"));
			hotel.setH_id((String)session.getAttribute("h_id"));
			hotel.setH_password((String)session.getAttribute("h_password"));
			hotel.setH_phonenum((String)session.getAttribute("h_phonenum"));
			hotel.setH_name((String)session.getAttribute("h_name"));
			
			hotel.setH_location((String)request.getParameter("h_location"));
			hotel.setH_address((String)request.getParameter("h_address"));
			hotel.setH_info((String)request.getParameter("h_info"));
			
			session.invalidate();
			return dao.registerUser_e(hotel);
			
		} else {//잘못된 접근
			return 0;
		}
	}

	public boolean loginUserService(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		String userId = request.getParameter("id");
		String userPassword = request.getParameter("password");
		String loginType = request.getParameter("loginType");
		HttpSession session = request.getSession();
		
		Login login = new Login();
		String name = "";
		
		login.setId(userId);
		login.setPassword(userPassword);
		
		if(loginType.equals("personal")) {
			name = dao.loginUser_p(login);
		} else if(loginType.equals("enterprise")) {
			name = dao.loginHotel_e(login);
		} else {
			//리다이렉트
		}
		if(!name.isEmpty()){
			System.out.println(name);
			session.setAttribute("id", userId);
			session.setAttribute("type", loginType);
			session.setAttribute("name", name);
			return true; //성공
		} else {
			return false; //실패
		}
	}

	public Users detailUser_p(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		Users user = new Users();
		
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String loginType = (String)session.getAttribute("type");
		
		if(loginType.equals("personal")) {
			return dao.getDetail_p(id); 
		} else {
			return null;
		}
	}

	public Hotel detailUser_e(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		Hotel hotel = new Hotel();
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String loginType = (String)session.getAttribute("type");
		
		if(loginType.equals("enterprise")) {
			return dao.getDetail_e(id);
		} else {
			return null;
		}
	}

	public Users updateUser_p(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("utf-8");
		Users user = new Users();
		HttpSession session = request.getSession();
		
		String uid = (String)session.getAttribute("id");
		String loginType = (String)session.getAttribute("type");
		
		if(loginType.equals("personal")) {
			user = dao.getDetail_p(uid);
			
			int userNo = user.getUserNo();
			String id = request.getParameter("mypage_id");
			String password = request.getParameter("mypage_password");
			String name = request.getParameter("mypage_name");
			String tel = request.getParameter("mypage_tel");
			String email = request.getParameter("mypage_email");
			String gender = request.getParameter("mypage_gender");
			String birth = request.getParameter("mypage_birth");
			
			user = new Users(userNo, id, password, name, tel, email, gender, birth);
			System.out.println(user);
			
			int re = dao.updateUser_p(user);
			/*if(re > -1) {
				session.setAttribute("alert", "수정완료!!!");
			} else {
				session.setAttribute("alert", "수정실패!!!");
			}*/
		}
		return dao.getDetail_p(uid);
	}
}
