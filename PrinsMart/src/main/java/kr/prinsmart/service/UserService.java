package kr.prinsmart.service;




import java.util.List;

import kr.prinsmart.domain.UserVO;
import kr.prinsmart.dto.LoginDTO;


public interface UserService {
	public void regist(UserVO user) throws Exception;
	
	public UserVO login(LoginDTO dto) throws Exception;
	
	public UserVO selectUser(String user_id) throws Exception;
	
	

	

}
