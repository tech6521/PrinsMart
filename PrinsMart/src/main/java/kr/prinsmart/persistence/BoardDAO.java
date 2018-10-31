package kr.prinsmart.persistence;

import java.util.List;

import kr.prinsmart.domain.BoardVO;

public interface BoardDAO {
	
	public void create(BoardVO vo) throws Exception;
	
	 public BoardVO read(Integer bno) throws Exception;
	 
	 public void update(BoardVO vo) throws Exception;
	 
	 public void delete(Integer bno) throws Exception;
	 
	 public List<BoardVO> selectAll() throws Exception;
	 
	 public List<BoardVO> listPage(int page) throws Exception;
	

	
	

}
