package kr.prinsmart.service;



import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;



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
	public UserVO selectUser(String user_id) throws Exception {
		
		return dao.selectUser(user_id);
	}

	@Override
	public UserVO updateUser(UserVO vo) throws Exception {
		return dao.updateUser(vo);
	}

	@Override
	public UserVO deleteUser(String id) throws Exception {
		
		return dao.deleteUser(id);
	}


	

	

	



	

}
