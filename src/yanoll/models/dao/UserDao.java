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
	
/*	public int registerUser (Users users){
		Connection conn = null;
		PreparedStatement pstmt = null;

		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "kosta186";
		String password = "1234";
		String sql = "insert into users values( users_seq.nextval, ?, ?, ?, ?, ?, ?, ? )"; // ? = 커맨드 객체
		int re = -1; //-1 : 데이터 값에 변화가 없다. -> 변경 실패
		
		try {
			// 1. JDBC 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2. Connection 객체 생성 (DB 연결)
			conn = DriverManager.getConnection(url, user, password);
			
			// 3. PrepareStatement 객체생성
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, users.getId());
			pstmt.setString(2, users.getPassword());
			pstmt.setString(3, users.getName());
			pstmt.setString(4, users.getTel());
			pstmt.setString(5, users.getEmail());
			pstmt.setString(6, users.getGender());
			pstmt.setString(7, users.getBirth());
			
			// 4. ResultSet 객체생성
			re = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return re;
	}*/

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
	
	
	public int registerUser(Users user) {	
		int re = -1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		try {
			re = sqlSession.getMapper(UserMapper.class).registerUser(user);
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
		System.out.println(re);
		return re;
	}
	
	
	public int registerUser(Hotel hotel) {
		Connection conn = null;
		PreparedStatement pstmt = null;

		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "kosta186";
		String password = "1234";
		String sql = "insert into hotel values ( "
				+ "hotel_seq.nextval, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; // ? = 커맨드 객체
		int re = -1; //-1 : 데이터 값에 변화가 없다. -> 변경 실패
		
		try {
			// 1. JDBC 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			// 2. Connection 객체 생성 (DB 연결)
			conn = DriverManager.getConnection(url, user, password);
			
			// 3. PrepareStatement 객체생성
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, hotel.getH_name());
			pstmt.setString(2, hotel.getH_phonenum());
			pstmt.setString(3, hotel.getH_mail());
			pstmt.setString(4, hotel.getH_address());
			pstmt.setInt(5, hotel.getRoom_count());
			pstmt.setString(6, hotel.getH_id());
			pstmt.setString(7, hotel.getH_password());
			pstmt.setInt(8, hotel.getH_profit());
			pstmt.setInt(9, hotel.getPrice());
			pstmt.setString(10, hotel.getH_info());
			pstmt.setString(11, hotel.getPic_url());
			pstmt.setString(12, hotel.getH_location());
			
			// 4. ResultSet 객체생성
			re = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
		return re;
		
	}


	public int loginUser(String userId, String userPass) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int re = -1; //-1 : 데이터 값에 변화가 없다. -> 변경 실패

		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "kosta186";
		String password = "1234";
		String sql = "select password from users where id= ( ? )"; // ? = 커맨드 객체
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);

			rs = pstmt.executeQuery();
			rs.next();
			if(userPass.equals(rs.getString("password"))) {
				re = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(re);
		return re;
	}


	public int loginHotel(String h_id, String h_password) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int re = -1; //-1 : 데이터 값에 변화가 없다. -> 변경 실패

		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String user = "kosta186";
		String password = "1234";
		String sql = "select h_password from hotel where h_id= ( ? )"; // ? = 커맨드 객체
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, password);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, h_id);

			rs = pstmt.executeQuery();
			rs.next();
			if(h_password.equals(rs.getString("h_password"))) {
				re = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(re);
		return re;
	}
	
	



}
