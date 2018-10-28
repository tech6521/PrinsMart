package kr.prinsmart.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.prinsmart.domain.CartVO;
import kr.prinsmart.domain.OrderVO;
import kr.prinsmart.persistence.CartDAO;

@Service
public class CartServiceImpl implements CartService{
	
	@Inject
	private CartDAO dao;
	
	
	
	@Override
	public void insert(CartVO vo) throws Exception {
		dao.insert(vo);
		
	}

	@Override
	public List<CartVO> listCart(String user_id) throws Exception {
		
		return dao.listCart(user_id);
	}

	@Override
	public void deleteCart(int cart_id) throws Exception {
		dao.deleteCart(cart_id);
		
	}

	@Override
	public void order(OrderVO vo) throws Exception {
		dao.order(vo);
		
	}

}
