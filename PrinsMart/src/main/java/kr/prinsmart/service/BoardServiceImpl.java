package kr.prinsmart.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.prinsmart.domain.BoardVO;
import kr.prinsmart.domain.Criteria;
import kr.prinsmart.domain.SearchCriteria;
import kr.prinsmart.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	BoardDAO dao;
	
	@Override
	public void regist(BoardVO board) throws Exception {
		dao.create(board);
		
	}
	
	@Override
	public BoardVO read(Integer bno) throws Exception {
	    return dao.read(bno);
	}
 	@Override
	public void update(BoardVO board) throws Exception {
	    dao.update(board);
	}
 	@Override
	public void delete(Integer bno) throws Exception {
	    dao.delete(bno);
	}
 	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.selectAll();
	}

	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountPaging(Criteria cri) throws Exception {
		
		return dao.countPaging(cri);
	}

	@Override
	public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		
		return	dao.listSearch(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		return dao.listSearchCount(cri);
	}
	
	

}
