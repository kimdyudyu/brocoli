package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;

public interface AdminService {

	/**
	 * 작성자:신은지
	 * 1-1. 회원수
	 * @return
	 */
	int memberCount();

	/**
	 * 작성자:신은지
	 * 1-2. 브랜드수
	 * @return
	 */
	int brandCount();

	/**
	 * 작성자:신은지
	 * 1-3. 주문수
	 * @return
	 */
	int orderCount();

	/**
	 * 작성자:신은지
	 * 1-4. 총매출
	 * @return
	 */
	String sales();

	/**
	 *  작성자 : 신으닞
	 *  1-5.최근 등록 브랜드 5개 
	 * @return
	 */
	ArrayList<Brand> BrandList();

	/**
	 * 작성자 : 신은지
	 *  1-6.chart 여성
	 * @return
	 */
	int memberWCount();

	/**
	 * 작성자 : 신은지
	 *  1-7.chart 남성
	 * @return
	 */
	int memberMCount();
}
