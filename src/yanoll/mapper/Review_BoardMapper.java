package yanoll.mapper;

import java.util.List;

import yanoll.models.vo.Booking;
import yanoll.models.vo.Review_Board;
import yanoll.models.vo.Users;

public interface Review_BoardMapper {
	int insertReview(Review_Board board);
	List<Review_Board> listReview ();
	Review_Board detailReview(int r_no);
	int deleteReivew(int r_no);
	List<Booking> listCheck(String id);
	String searchHotle_name(int h_no);
	int search_userNo(String id);
	int change_condition(int booking_num);
}








