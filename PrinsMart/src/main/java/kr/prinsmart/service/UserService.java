package kr.prinsmart.service;

import kr.prinsmart.domain.UserVO;
import kr.prinsmart.dto.LoginDTO;


public interface UserService {
	public void regist(UserVO user) throws Exception;
	
	public UserVO login(LoginDTO dto) throws Exception;
	
	

	

}
