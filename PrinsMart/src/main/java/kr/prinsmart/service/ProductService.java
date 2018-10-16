package kr.prinsmart.service;

import java.util.List;

import kr.prinsmart.domain.ProductVO;

public interface ProductService {
	
	public List<ProductVO> listProduct();
	
	public ProductVO detailProduct(int productId);
	
	public List<ProductVO> selectProduct(int categoryid);
}
