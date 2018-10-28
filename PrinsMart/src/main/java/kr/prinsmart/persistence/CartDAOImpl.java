package kr.prinsmart.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.prinsmart.domain.CartVO;
import kr.prinsmart.domain.OrderVO;

@Repository
public class CartDAOImpl implements CartDAO {
	
	@Inject
	SqlSession sqlSession;
	
	private static String namespace = "kr.prinsmart.mapper.CartMapper";
	
	
	@Override
	public void insert(CartVO vo) throws Exception {
		sqlSession.insert(namespace+".insertCart", vo);
		
	}


	@Override
	public List<CartVO> listCart(String user_id) throws Exception {
		
		return sqlSession.selectList(namespace+".listCart", user_id);
	}


	@Override
	public void deleteCart(int cart_id) throws Exception {
		sqlSession.delete(namespace+".deleteCart", cart_id);
		
	}


	@Override
	public void order(OrderVO vo) throws Exception {
		sqlSession.insert(namespace+".order", vo);
		
	}

}
