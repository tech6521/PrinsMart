package kr.prinsmart.persistence;

import java.util.List;

import kr.prinsmart.domain.BoardVO;
import kr.prinsmart.domain.Criteria;
import kr.prinsmart.domain.SearchCriteria;

public interface BoardDAO {
	
	public void create(BoardVO vo) throws Exception;
	
	 public BoardVO read(Integer bno) throws Exception;
	 
	 public void update(BoardVO vo) throws Exception;
	 
	 public void delete(Integer bno) throws Exception;
	 
	 public List<BoardVO> selectAll() throws Exception;
	 
	 public List<BoardVO> listPage(int page) throws Exception;
	 
	 public List<BoardVO> listCriteria(Criteria cri);
	 
	 public int countPaging(Criteria cri) throws Exception;
	 
	 public List<BoardVO> listSearch(SearchCriteria cri) throws Exception;
	 
	 public int listSearchCount(SearchCriteria cri) throws Exception;
	 
	

	
	

}
