package kr.prinsmart.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.prinsmart.domain.ProductVO;
import kr.prinsmart.domain.SearchCriteria;
import kr.prinsmart.domain.UserVO;
import kr.prinsmart.dto.LoginDTO;
import kr.prinsmart.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService{

	@Inject
	private ProductDAO dao;
	
	@Override
	public List<ProductVO> listProduct() throws Exception {
		
		return dao.listProduct();
		
		
	}

	@Override
	public ProductVO detailProduct(int product_id) throws Exception {
		return dao.detailProduct(product_id);
	}

	@Override
	public List<ProductVO> selectProduct(int category_id) throws Exception {
		
		return dao.selectProduct(category_id);
	}

	@Override
	public List<ProductVO> searchProduct(ProductVO cri) throws Exception {
		
		return dao.searchProduct(cri);
	}

}
