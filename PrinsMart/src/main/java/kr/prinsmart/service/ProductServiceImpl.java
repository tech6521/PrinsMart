package kr.prinsmart.service;

import java.util.List;

import javax.inject.Inject;

import kr.prinsmart.domain.ProductVO;
import kr.prinsmart.persistence.ProductDAO;

public class ProductServiceImpl implements ProductService{

	@Inject
	ProductDAO productdao;
	
	@Override
	public List<ProductVO> listProduct() {
		
		return productdao.listProduct();
	}

}
