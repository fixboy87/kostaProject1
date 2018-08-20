package yanoll.models.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import sun.misc.Resource;
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
	
	public List<Review_Board> review_list() {
		SqlSession sqlSession =getSqlSessionFactory().openSession();
		List<Review_Board> list = null;
		try {
			list = sqlSession.getMapper(Review_BoardMapper.class).review_list();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}

}
