package kr.prinsmart.persistence;



import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import kr.prinsmart.domain.UserVO;
import kr.prinsmart.dto.LoginDTO;




@Repository
public class UserDAOImpl implements UserDAO {
	
	
	
	
	private static String namespace = "kr.prinsmart.mapper.UserMapper";
	
	
	
	@Inject
	private SqlSession session;
	
	@Override
	public void create(UserVO vo) throws Exception {
		session.insert(namespace+".create", vo);
		
	}

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		
		return session.selectOne(namespace + ".login", dto);
	}

	

	

	
	
}
