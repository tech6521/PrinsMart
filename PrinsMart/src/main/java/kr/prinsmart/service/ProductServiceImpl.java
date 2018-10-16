package kr.prinsmart.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.prinsmart.domain.ProductVO;
import kr.prinsmart.persistence.ProductDAO;

@Service
public class ProductServiceImpl implements ProductService {

    @Inject
    ProductDAO dao;

    // 01. 상품목록
    @Override
    public List<ProductVO> listProduct() {
        return dao.listProduct();
    }

	@Override
	public ProductVO detailProduct(int productId) {
		
		return dao.detailProduct(productId);
	}

	@Override
	public List<ProductVO> selectProduct(int categoryid) {
		
		return dao.selectProduct(categoryid);
	}
   

}

