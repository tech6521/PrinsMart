package kr.prinsmart.service;

import java.util.List;

import kr.prinsmart.domain.BoardVO;
import kr.prinsmart.domain.Criteria;
import kr.prinsmart.domain.SearchCriteria;

public interface BoardService {
	
	public void regist(BoardVO board) throws Exception;
	
	  public BoardVO read(Integer bno) throws Exception;
	  
 	  public void update(BoardVO board) throws Exception;
 	  
 	  public void delete(Integer bno) throws Exception;
 	  
 	  public List<BoardVO> listAll() throws Exception;
 	  
 	 public List<BoardVO> listCriteria(Criteria cri) throws Exception;
 	 
 	 public int listCountPaging(Criteria cri) throws Exception;
 	 
 	  public List<BoardVO> listSearchCriteria(SearchCriteria cri) 
 		      throws Exception;

 	 public int listSearchCount(SearchCriteria cri) throws Exception;

}
