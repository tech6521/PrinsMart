package kr.prinsmart.persistence;



import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


import kr.prinsmart.domain.UserVO;
import kr.prinsmart.dto.LoginDTO;




@Repository
public class UserDAOImpl implements UserDAO {
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "kr.prinsmart.mapper.UserMapper";
	
	
	
	
	
	@Override
	public void create(UserVO vo) throws Exception {
		session.insert(namespace+".create", vo);
		
	}

	@Override
	public UserVO login(LoginDTO dto) throws Exception {
		
		return session.selectOne(namespace + ".login", dto);
	}

	@Override
	public UserVO selectUser(String user_id) throws Exception {
		
		return session.selectOne(namespace + ".selectUser", user_id);
	}

	@Override
	public UserVO updateUser(UserVO vo) throws Exception {
		return session.selectOne(namespace + ".updateUser", vo);
	}

	

	@Override
	public UserVO deleteUser(String id) throws Exception {
		
		return session.selectOne(namespace + ".deleteUser", id);
	}

	

	

	

	

	

	

	

	
	
}
