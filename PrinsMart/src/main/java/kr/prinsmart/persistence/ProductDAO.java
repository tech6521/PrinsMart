package kr.prinsmart.persistence;

import java.util.List;

import kr.prinsmart.domain.ProductVO;

public interface ProductDAO {
	
	
	public List<ProductVO> listProduct();
	
	public ProductVO detailProduct(int productId);
	
	public List<ProductVO> selectProduct(int categoryId);
}
