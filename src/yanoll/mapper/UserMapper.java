package yanoll.mapper;

import yanoll.models.vo.Hotel;
import yanoll.models.vo.Users;

public interface UserMapper {

	public int registerUser_p(Users user);
	public int registerUser_e(Hotel hotel);

}
