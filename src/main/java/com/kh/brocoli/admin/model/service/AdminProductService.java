package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_Option;

public interface AdminProductService {

	/**
	 * 작성자 : 신은지
	 * 1. 상품 list
	 * @return
	 */
	ArrayList<Product> selectProductList();

	/**
	 * 작성자 : 신은지
	 * 2. 상품 상세보기 
	 * @param p_NO
	 * @return
	 */
	Product selectproductDetail(int p_NO);

	/**
	 * 작성자  : 신은지
	 * 3. 상품 옵션 list
	 * @param p_NO
	 * @return
	 */
	ArrayList<Product_Option> selectStockManagement();

	/**
	 * 작성자  : 신은지
	 * 4. 상품 수정 
	 * @param p
	 * @return
	 */
	int productUpdate(Product p);

	/**
	 * 작성자 : 신은지
	 * 5. 판매 중지상품 list
	 * @return
	 */
	ArrayList<Product> selectProductStopList();

}
