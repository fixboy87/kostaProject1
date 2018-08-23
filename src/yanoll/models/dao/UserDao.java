package yanoll.models.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import yanoll.mapper.UserMapper;
import yanoll.models.vo.Hotel;
import yanoll.models.vo.Login;
import yanoll.models.vo.Users;

public class UserDao {

	private static UserDao dao= new UserDao();
	
	public static UserDao getInstance() {
		return dao;
	}

	
	//DBCP방식으로 Connection 객체 구하기
	public Connection getConnection() {
		DataSource ds = null;
		
		try {
			Context ctx = new InitialContext();
			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/oracle");
			return ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		InputStream in = null;
		
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
	}
	
	
	public int registerUser_p(Users user) {	
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(UserMapper.class).registerUser_p(user);
			if(re > 0){
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}
	
	public int registerUser_e(Hotel hotel) {
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re = sqlSession.getMapper(UserMapper.class).registerUser_e(hotel);
			if(re > 0){
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}
	
	
	public String loginUser_p(Login login) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String name = "@";
		
		try {
			name = sqlSession.getMapper(UserMapper.class).loginUser_p(login);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return name;
	}
	
	
	public String loginHotel_e(Login login) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		String name = "";
		
		try {
			name = sqlSession.getMapper(UserMapper.class).loginUser_e(login);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return name;
	}


	public Users getDetail_p(String id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Users user = new Users();
		try{
			user = sqlSession.getMapper(UserMapper.class).detailUser_p(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return user;
	}


	public Hotel getDetail_e(String id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Hotel hotel = new Hotel();
		
		try {
			hotel = sqlSession.getMapper(UserMapper.class).detailUser_e(id);
		} catch (Exception e){
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return hotel;
	}


	public int updateUser_p(Users user) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Users newUser = new Users();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(UserMapper.class).updateUser_p(user);
			
			if(re>-1) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}


	public int deregister_p(String uid) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(UserMapper.class).deregister_p(uid);
			
			if(re > -1) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return re;
	}
	


}
