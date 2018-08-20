package yanoll.models.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import yanoll.mapper.HotelMapper;
import yanoll.models.vo.Hotel;

public class HotelDao {
	private static HotelDao dao =new HotelDao();
	public static  HotelDao getInstance(){
		return dao;
	}
	public SqlSessionFactory getSqlSessionFactory(){
		String resource ="mybatis-config.xml";
		InputStream in = null;
		try {
			in= Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}
	
	public List<Hotel> hotel(){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Hotel> list= null;
		
		try {
			list = sqlSession.getMapper(HotelMapper.class).hotelList();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return list;
	}
}












