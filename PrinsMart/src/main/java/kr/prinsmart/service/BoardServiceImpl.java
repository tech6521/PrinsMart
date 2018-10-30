package kr.prinsmart.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.prinsmart.domain.BoardVO;
import kr.prinsmart.persistence.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService{

	@Inject
	BoardDAO dao;
	
	@Override
	public void regist(BoardVO board) throws Exception {
		dao.create(board);
		
	}
	
	

}
