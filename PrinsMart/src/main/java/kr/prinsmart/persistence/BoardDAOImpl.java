package kr.prinsmart.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.prinsmart.domain.BoardVO;


@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.prinsmart.mapper.BoardMapper";
	
	@Override
	public void create(BoardVO vo) throws Exception {
		session.insert(namespace+".create", vo);
		
	}

	@Override
	public void read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(BoardVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
