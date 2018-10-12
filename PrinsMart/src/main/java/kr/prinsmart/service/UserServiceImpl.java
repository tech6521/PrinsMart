package kr.prinsmart.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import kr.prinsmart.domain.ProductVO;
import kr.prinsmart.domain.UserVO;
import kr.prinsmart.dto.LoginDTO;
import kr.prinsmart.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService{
	
	@Inject
	private UserDAO dao;
	
	@Override
	public void regist(UserVO user) throws Exception {
		dao.create(user);
		
	}

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		
		return dao.login(dto);
	}

	@Override
	public List<ProductVO> list() throws Exception {
		return dao.list();
	}

	



	

}
