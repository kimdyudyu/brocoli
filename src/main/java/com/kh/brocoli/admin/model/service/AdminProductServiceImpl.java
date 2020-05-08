package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminProductDao;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_Option;

@Service("APSerivce")
public class AdminProductServiceImpl implements AdminProductService {

	@Autowired
	private AdminProductDao APDao;

	/**
	 * 작성자 : 신은지
	 * 1. 상품 list
	 */
	@Override
	public ArrayList<Product> selectProductList() {
		return APDao.selectProductList();
	}

	/**
	 * 작성자 : 신은지
	 * 2. 상품 상세보기
	 */
	@Override
	public Product selectproductDetail(int p_NO) {
		return APDao.selectproductDetail(p_NO);
	}

	/**
	 * 작성자 : 신은지
	 * 3. 상품 재고 list
	 */
	@Override
	public ArrayList<Product_Option> selectStockManagement() {
		return APDao.selectStockManagement();
	}

	/**
	 * 작성자 : 신은지
	 * 4. 상품 수정
	 */
	@Override
	public int productUpdate(Product p) {
		return APDao.productUpdate(p);
	}

	/**
	 * 작성자 : 신은지
	 * 5. 판매 중지 상품 list
	 */
	@Override
	public ArrayList<Product> selectProductStopList() {
		return APDao.selectProductStopList();
	}
}
