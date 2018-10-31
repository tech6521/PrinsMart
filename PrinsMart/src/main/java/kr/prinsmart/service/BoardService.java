package kr.prinsmart.service;

import java.util.List;

import kr.prinsmart.domain.BoardVO;

public interface BoardService {
	
	public void regist(BoardVO board) throws Exception;
	
	  public BoardVO read(Integer bno) throws Exception;
	  
 	  public void update(BoardVO board) throws Exception;
 	  
 	  public void delete(Integer bno) throws Exception;
 	  
 	  public List<BoardVO> listAll() throws Exception;

}
