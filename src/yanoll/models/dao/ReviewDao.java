package yanoll.models.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import sun.misc.Resource;
import yanoll.mapper.BoardMapper;
import yanoll.mapper.Review_BoardMapper;
import yanoll.models.vo.Review_Board;

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
	public List<Review_Board> listReview() {
	      SqlSession sqlSession =getSqlSessionFactory().openSession();
	      List<Review_Board> list = null;
	      System.out.println("3-1.dao 입성");
	      try {
	    	  System.out.println("3-2.dao에서 메소드 호출");
	         list = sqlSession.getMapper(Review_BoardMapper.class).listReview();
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	         sqlSession.close();
	      }
	      System.out.println("3-3.dao에서 list 반환");
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
			System.out.println("-----------이다음이 문제"+r_no);
			re = sqlSession.getMapper(Review_BoardMapper.class).deleteReivew(r_no);
			System.out.println("-------------------re값"+re);
			if (re>0) {
				System.out.println("-----------if"+re);
				sqlSession.commit();
			}else {
				System.out.println("-----------else여긴가.."+re);
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		System.out.println("리턴은 함");
		return re;
	}
}
