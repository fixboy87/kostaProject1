package yanoll.models.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import yanoll.mapper.ManagerBoardMapper;
import yanoll.models.vo.ReservationSearch;

public class ManagementDao{
	private static ManagementDao dao = new ManagementDao();
	public static ManagementDao getInstance(){
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory(){
		String resource = "mybatis-config.xml";
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}
	
	public List<ReservationSearch> listBoard(int startRow){
		SqlSession sqlSession = getSqlSessionFactory().openSession();  // sql문을 직접 받아올수 있는 sqlsession 객체만듬
		List<ReservationSearch> list = null;
		
		try {
			list = sqlSession.getMapper(ManagerBoardMapper.class).listBoard(new RowBounds(startRow, 5));
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return list;
	}

	public int countBoard(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		
		try {
			re = sqlSession.getMapper(ManagerBoardMapper.class).countBoard();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return re;
	}
	
}