package yanoll.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import yanoll.models.vo.ReservationSearch;
import yanoll.models.vo.User;
import yanoll.models.vo.UserSearch;
import yanoll.models.vo.Users;

public interface ManagerBoardMapper {
	int insertBoard(Users users);
	 List<ReservationSearch> listBoard(RowBounds row, UserSearch search);
	 
}