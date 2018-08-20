package yanoll.mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;


public interface ManagerBoardMapper {
	List<Board> listBoard(RowBounds row, Search search); //list.jsp에서 메소드 호출할떄 인자값을 맞추어줌
	   Board detailBoard(int seq);
}
