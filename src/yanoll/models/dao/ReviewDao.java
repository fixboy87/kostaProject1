package yanoll.models.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.jdbc.SQL;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import sun.misc.Resource;
import yanoll.mapper.BoardMapper;
import yanoll.mapper.Review_BoardMapper;
import yanoll.models.vo.Booking;
import yanoll.models.vo.Review_Board;
import yanoll.models.vo.Users;

public class ReviewDao {
	
	public static ReviewDao getInstance() {
			ReviewDao dao = new ReviewDao();
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		String resource= "mybatis-config.xml";
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}
	
/*리뷰작성*/
	public int insertReview(Review_Board board) {
		int re=-1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(Review_BoardMapper.class).insertReview(board);
			if(re>0){
				System.out.println("dao에서 부킹 넘버"+board.getBooking_num());
				change_condition(board.getBooking_num());
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}

/*리뷰 목록*/
	public List<Review_Board> listReview(String hotle_name) {
	      SqlSession sqlSession =getSqlSessionFactory().openSession();
	      List<Review_Board> list = null;
	      try {
	         list = sqlSession.getMapper(Review_BoardMapper.class).listReview(hotle_name);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	         sqlSession.close();
	      }
	      return list;
	   }

/*리뷰 디테일*/
	public Review_Board detailReview(int r_no) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Review_Board board =new Review_Board();
		try {
			board = sqlSession.getMapper(Review_BoardMapper.class).detailReview(r_no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return board;
	}

/*리뷰 삭제*/
	public int deleteReivew(int r_no) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(Review_BoardMapper.class).deleteReivew(r_no);
			if (re>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}
	
	/*	예약 가능 목록*/
	public List<Booking> listCheck(String id) {
		List<Booking> list =null;
		System.out.println("dao1"+id);
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			System.out.println("dao2"+id);
			list=sqlSession.getMapper(Review_BoardMapper.class).listCheck(id);
			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
	
/*호텔번호로 이름 찾기*/
	public String searchHotle_name(int h_no) {
		String hotle_name ="";
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			hotle_name = sqlSession.getMapper(Review_BoardMapper.class).searchHotle_name(h_no);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return hotle_name;
	}

	
/*회원번호*/
	public int search_userNo(String id) {
		int userNo =0;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			userNo = sqlSession.getMapper(Review_BoardMapper.class).search_userNo(id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return userNo;
	}

/*후기 작성 후 p_condition 변경*/
	public int change_condition(int booking_num) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re =-1;
		try {
			re = sqlSession.getMapper(Review_BoardMapper.class).change_condition(booking_num);
			if (re>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}
	
	
/*후기 수정*/
	public int updateReview(Review_Board board) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re =-1;
		System.out.println("asdasd");
		try {
			re = sqlSession.getMapper(Review_BoardMapper.class).updateReview(board);
			System.out.println("asdasd");
			if (re>0) {
				sqlSession.commit();
			}else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}
	
}
