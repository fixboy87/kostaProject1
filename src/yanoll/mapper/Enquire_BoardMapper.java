package yanoll.mapper;



import java.util.List;

import org.apache.ibatis.session.RowBounds;

import yanoll.models.vo.Enquire_Board;
import yanoll.models.vo.Enquire_Reply;
import yanoll.models.vo.Enquire_Search;

public interface Enquire_BoardMapper {  //kosta.mapper 폴더안에 인터페이스를 BoardMapper 로 해서 네임스페이스 이용가능
          
	      int insertEnquire(Enquire_Board board);
	      List<Enquire_Board> EnquireList(RowBounds row,Enquire_Search search);
          int countBoard(Enquire_Search search);
          Enquire_Board EnquireDetail(int e_seq);
          int insertEnquireReply(Enquire_Reply reply);
          List<Enquire_Reply> EnqReplyList(int e_seq);
          int deleteEnquire(int e_seq);
          int deleteEnquireReply(int e_seq);
          int updateEnquireReply(Enquire_Reply reply);
          List<Enquire_Board> EnquireList2(String id);
          int updateEnquire(Enquire_Board board);



}
