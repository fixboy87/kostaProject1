package yanoll.mapper;



import org.apache.ibatis.session.RowBounds;

import yanoll.models.vo.Enquire_Board;

public interface Enquire_BoardMapper {  //kosta.mapper 폴더안에 인터페이스를 BoardMapper 로 해서 네임스페이스 이용가능
          int insertEnquire(Enquire_Board board);
}
