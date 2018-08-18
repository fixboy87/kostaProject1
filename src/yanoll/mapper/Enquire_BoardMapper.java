package yanoll.mapper;



import java.util.List;



import yanoll.models.vo.Enquire_Board;
import yanoll.models.vo.Enquire_Search;

public interface Enquire_BoardMapper {  //kosta.mapper 폴더안에 인터페이스를 BoardMapper 로 해서 네임스페이스 이용가능
          
	      int insertEnquire(Enquire_Board board);
          List<Enquire_Board> EnquireList(RowBounds row,Enquire_Search search);
}
