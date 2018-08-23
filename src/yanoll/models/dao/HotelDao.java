package yanoll.models.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import yanoll.mapper.HotelMapper;
import yanoll.models.vo.Hotel;
import yanoll.models.vo.Hotel_room;
import yanoll.models.vo.SearchCondition;

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
			list = sqlSession.getMapper(HotelMapper.class).hotelList(); //파라미터 타입 쓴거 써주면됨(mapper 의 parameterType="")
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return list;
	}
	
	public List<Hotel> SortLocation(String h_location){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Hotel> list = null;
		
		try {
			list = sqlSession.getMapper(HotelMapper.class).hotelSortLocation(h_location);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return list;
	}
	
	public List<Hotel> hotelPriceSelector (SearchCondition condition ){
		
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Hotel>list = null;
		
		try {
			
			list = sqlSession.getMapper(HotelMapper.class).hotelPriceSelector(condition);
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		
		return list;
	}
	
	public List<Hotel_room> hotelDetailList(int h_no){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Hotel_room> list = null;
		
		try {
			list = sqlSession.getMapper(HotelMapper.class).hotelDetailList(h_no);
			System.out.println("디테일 DAO 접근");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return list;
	}
}












