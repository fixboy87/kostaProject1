package yanoll.mapper;

import java.util.List;

import yanoll.models.vo.Review_Board;

public interface Review_BoardMapper {
	int insertReview(Review_Board board);
	List<Review_Board> listReview ();
	Review_Board detailReview(int r_no);
	int deleteReivew(int r_no);
}








