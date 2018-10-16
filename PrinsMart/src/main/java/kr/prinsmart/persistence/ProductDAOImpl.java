package kr.prinsmart.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.prinsmart.domain.ProductVO;

@Repository
	public class ProductDAOImpl implements ProductDAO {

	    @Inject
	    SqlSession sqlSession;

	    // 01. 상품목록
	    @Override
	    public List<ProductVO> listProduct() {
	        return sqlSession.selectList("product.listProduct");
	    

	}

		@Override
		public ProductVO detailProduct(int productId) {
			
			return sqlSession.selectOne("product.detailProduct", productId);
		}

		@Override
		public List<ProductVO> selectProduct(int categoryId) {
			
			return sqlSession.selectList("product.selectProduct", categoryId);
		}


}
