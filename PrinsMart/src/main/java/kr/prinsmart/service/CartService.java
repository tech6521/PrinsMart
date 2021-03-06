package kr.prinsmart.service;

import java.util.List;

import kr.prinsmart.domain.CartVO;
import kr.prinsmart.domain.OrderVO;

public interface CartService {
	public void insert(CartVO vo) throws Exception;
	
	public List<CartVO> listCart(String user_id) throws Exception;
	
	public void deleteCart(int cart_id) throws Exception;
	
	public void order(OrderVO vo) throws Exception;

}
