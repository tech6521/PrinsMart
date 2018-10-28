package kr.prinsmart.persistence;




import java.util.List;

import kr.prinsmart.domain.UserVO;
import kr.prinsmart.dto.LoginDTO;


public interface UserDAO {
	
	
	public void create(UserVO vo) throws Exception;
	
	public UserVO login(LoginDTO dto) throws Exception;
	
	public UserVO selectUser(String user_id) throws Exception;
	
	public UserVO updateUser(UserVO vo) throws Exception;
	
	
	
	
	
	

}
