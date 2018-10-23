package kr.prinsmart.persistence;

import java.util.List;

import kr.prinsmart.domain.CartVO;


public interface CartDAO {
	public void insert(CartVO vo) throws Exception;
	
	public List<CartVO> listCart(String user_id) throws Exception;
	
	public void deleteCart(int cart_id) throws Exception;

}
