package yanoll.mapper;

import yanoll.models.vo.Hotel;
import yanoll.models.vo.Login;
import yanoll.models.vo.Users;

public interface UserMapper {

	public int registerUser_p(Users user);
	public int registerUser_e(Hotel hotel);
	public String loginUser_p(Login login);
	public String loginUser_e(Login login);
	public Users detailUser_p(String id);
	public Hotel detailUser_e(String id);

}
