package kr.prinsmart.persistence;

import java.util.List;

import kr.prinsmart.domain.ProductVO;

public interface ProductDAO {
	
	public List<ProductVO> listProduct() throws Exception;
	
	public ProductVO detailProduct(int product_id) throws Exception;
	
	public List<ProductVO> selectProduct(int category_id) throws Exception;

}
