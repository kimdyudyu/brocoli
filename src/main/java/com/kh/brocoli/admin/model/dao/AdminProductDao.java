package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_Option;

@Repository("APDao")
public class AdminProductDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 작성자 : 신은지
	 * 1. 상품 list
	 * @return
	 */
	public ArrayList<Product> selectProductList() {
		return  (ArrayList)sqlSession.selectList("AdminProduct.selectProductList");
	}

	/**
	 * 작성자 : 신은지
	 * 2. 상품 상세보기
	 * @param p_NO
	 * @return
	 */
	public Product selectproductDetail(int p_NO) {
		return sqlSession.selectOne("AdminProduct.selectproductDetail", p_NO);
	}

	/**
	 * 작성자 : 신은지
	 * 3. 상품 옵션 list
	 * @param p_NO
	 * @return
	 */
	public ArrayList<Product_Option> selectStockManagement() {
		return (ArrayList)sqlSession.selectList("AdminProduct.selectStockManagement");
	}

	/**
	 * 작성자 : 신은지
	 * 4. 상품 수정
	 * @param p
	 * @return
	 */
	public int productUpdate(Product p) {
		return sqlSession.update("AdminProduct.productUpdate",p);
	}

	/**
	 * 작성자 : 신은지
	 * 5. 판매 중지 상품 list
	 * @return
	 */
	public ArrayList<Product> selectProductStopList() {
		return (ArrayList)sqlSession.selectList("AdminProduct.selectProductStopList");
	}
}
