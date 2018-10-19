package kr.prinsmart.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import kr.prinsmart.domain.ProductVO;

@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Inject
	SqlSession sqlSession;
	
	private static String namespace = "kr.prinsmart.mapper.ProductMapper";
	
	@Override
	public List<ProductVO> listProduct() throws Exception{
		
		return sqlSession.selectList(namespace+".listProduct");
	}

	@Override
	public ProductVO detailProduct(int product_id) throws Exception {
		return sqlSession.selectOne(namespace+".detailProduct", product_id);
	}

	@Override
	public List<ProductVO> selectProduct(int category_id) throws Exception {
		
		return sqlSession.selectList(namespace+".selectProduct", category_id);
	}
	
}
