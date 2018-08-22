package yanoll.models.dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import yanoll.mapper.Enquire_BoardMapper;
import yanoll.models.vo.Enquire_Board;
import yanoll.models.vo.Enquire_List;
import yanoll.models.vo.Enquire_Reply;
import yanoll.models.vo.Enquire_Search;

public class Enquire_BoardDao {
	private static Enquire_BoardDao dao= new Enquire_BoardDao();
	
	public static Enquire_BoardDao getinstance(){
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
	
	public int insertEnquire(Enquire_Board board){
		System.out.println(board);
		int re=-1;
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		
		try {
			re= sqlSession.getMapper(Enquire_BoardMapper.class).insertEnquire(board);
			
			if(re>0){
				sqlSession.commit();
			}else{
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			sqlSession.close();
		}
		return re;
	}
	
	public List<Enquire_Board> EnquireList(Enquire_Search search,int startRow){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Enquire_Board> list= null; 
		
		try {
			list= sqlSession.getMapper(Enquire_BoardMapper.class).EnquireList(new RowBounds(startRow , 10), search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		
		return list;
	}
	
	public int countBoard(Enquire_Search search) {
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		int re =0;

		try {
			re = sqlsession.getMapper(Enquire_BoardMapper.class).countBoard(search);
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlsession.close();
		}
		return re;
	}
	public Enquire_Board EnquireDetail(int e_seq){
		SqlSession sqlSession = getSqlSessionFactory().openSession();
	    Enquire_Board board= null;
		
		try {
			board= sqlSession.getMapper(Enquire_BoardMapper.class).EnquireDetail(e_seq);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return board;
	}
	
	public int deleteEnquireBoard(int e_seq){
		SqlSession session= getSqlSessionFactory().openSession();
		int re=-1;
		
		try {
			re= session.getMapper(Enquire_BoardMapper.class).deleteEnquire(e_seq);
			System.out.println(re);
			if(re>0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return re;
	}
	
	public int insertEnquireReply(Enquire_Reply reply){
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		int re= -1;
		System.out.println(reply);
		try {
			re= sqlsession.getMapper(Enquire_BoardMapper.class).insertEnquireReply(reply);
			
			if(re>0){
				sqlsession.commit();
			}else{
				sqlsession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlsession.close();
		}
		
		return re;
	}
	public List<Enquire_Reply> EnqReplyList(int e_seq){
		SqlSession sqlsession = getSqlSessionFactory().openSession();
		List<Enquire_Reply> reply = null;
		
		try {
			reply = sqlsession.getMapper(Enquire_BoardMapper.class).EnqReplyList(e_seq);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlsession.close();
		}
		return reply;
	}
	
	public int deleteEnqReply(int e_seq){
		SqlSession session = getSqlSessionFactory().openSession();
		int re=-1;
		try {
			re= session.getMapper(Enquire_BoardMapper.class).deleteEnquireReply(e_seq);
			
			if(re>0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return re;
	}
	public int updateRnqReply(int e_seq){
		SqlSession session= getSqlSessionFactory().openSession();
		int re=-1;
		
		try {
			re= session.getMapper(Enquire_BoardMapper.class).updateEnquireReply(e_seq);
			if(re>0){
				session.commit();
			}else{
				session.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return re;
	}
	

}
