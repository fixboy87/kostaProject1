package yanoll.model;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import yanoll.mapper.BoardMapper;
public class BoardDao2 {

	private static BoardDao2 dao = new BoardDao2();

	public static BoardDao2 getInstance() {
		return dao;
	}

	// SqlSessionFatory를 리턴하는 메소드
	// 마이바티스 라이브러리 안넣엇으면 안뜸

	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config.xml";
		// 이걸 설정한 이유는 DAO에서 사용하기 위함
		// DAO에서 사용하려면 mybatis-config.xml를 객체화해야함
		// 인풋스트림과 연결하면 SqlSessionFatory를 리턴가능
		// SqlSessionFatory를 통해 sqlSession객체를 얻을 수 있음
		// 최종적으로는 mybatis-config.xml에 있는 내용을 얻을 수 있고
		// mybatis-config.xml의 mappers태그에 경로를 기입한 실제 쿼리문도 사용이 가능해짐
		InputStream in = null; // 인풋스트림

		try { // 인풋스트림 사용하기 떄문에 예외발생을 처리하기위해 트라이 캐치사용
			in = Resources.getResourceAsStream(resource);
			// import org.apache.ibatis.io.Resources;이걸 import해주어야함
			// Resources에 인풋스트림 연결함

		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);
		// SqlSessionFatory를 리턴
		// SqlSessionFatory는 mybatis-config.xml 설정을 바탕으로 만들어짐
	}

	/*public int insertBoard(Board board) {
		int re = -1;
		// SqlSession객체가 필요함
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		// sql세션팩토리를 얻는 메소드를 통해 SqlSession객체 얻음
		try {
			re = sqlSession.getMapper(BoardMapper.class).insertBoard(board);
			// 스프링은 안해도되지만
			// jsp에선 인설트, 딜리트, 업데이트는 트랜잭션 처리 필요
			if (re > 0) {
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

	public List<Board> listBoard() {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		List<Board> list = null;

		try {
			// sql세션객체를 통해 list를 구함
			list = sqlSession.getMapper(BoardMapper.class).listBoard();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return list; // list를 반환
	}*/

	
	
	
}