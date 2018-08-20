package yanoll.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//yanoll.models.vo패키지 => ManagementBoardVO파일의 DBManager   
public class DBManager {
	public static Connection getConnection(){
		Connection conn=null;
		try{
			Context initContext = new InitialContext();
			Context EnvContext = (Context)initContext.lookup("java:/comp/env");
			//jdbc/myracle이란 이름을 객체를 찾아 datasource가 받는다
			DataSource ds = (DataSource) EnvContext.lookup("jdbc/myoracle");
			
			conn = ds.getConnection();
			}catch (Exception e) {
				e.printStackTrace();
			}
		return conn;
		}

	
	public static void close (Connection conn, Statement stmt, ResultSet rs){
		try {
			rs.close();
			stmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close (Connection conn, Statement stmt){
		try {
			stmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
