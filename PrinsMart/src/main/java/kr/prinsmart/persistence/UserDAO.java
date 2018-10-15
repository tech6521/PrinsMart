package kr.prinsmart.persistence;




import kr.prinsmart.domain.UserVO;
import kr.prinsmart.dto.LoginDTO;


public interface UserDAO {
	
	
	public void create(UserVO vo) throws Exception;
	
	public UserVO login(LoginDTO dto) throws Exception;
	
	

}
