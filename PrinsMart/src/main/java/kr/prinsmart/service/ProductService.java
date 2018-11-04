package kr.prinsmart.service;

import java.util.List;

import kr.prinsmart.domain.BoardVO;
import kr.prinsmart.domain.ProductVO;
import kr.prinsmart.domain.SearchCriteria;

public interface ProductService {
	
	public List<ProductVO> listProduct() throws Exception;
	
	public ProductVO detailProduct(int product_id) throws Exception;
	
	public List<ProductVO> selectProduct(int category_id) throws Exception;
	
	public List<ProductVO> searchProduct(ProductVO cri) throws Exception;
}
