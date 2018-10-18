package kr.prinsmart.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;

import kr.prinsmart.domain.ProductVO;

public class ProductDAOImpl implements ProductDAO{
	
	@Inject
	SqlSession sqlSession;
	
	@Override
	public List<ProductVO> listProduct() {
		
		return sqlSession.selectList("product.listProduct");
	}
	
}
