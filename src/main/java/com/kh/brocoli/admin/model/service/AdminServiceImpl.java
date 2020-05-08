package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminDao;
import com.kh.brocoli.admin.model.dao.AdminSalesDao;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;

@Service("AService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDao ADao;

	/**
	 * 작성자 : 신은지
	 * 1-1. 회원수
	 */
	@Override
	public int memberCount() {
		return ADao.memberCount();
	}

	/**
	 * 작성자:신은지
	 * 1-2. 브랜드수
	 * @return
	 */
	@Override
	public int brandCount() {
		return ADao.brandCount();
	}

	/**
	 * 작성자:신은지
	 * 1-3. 주문수
	 * @return
	 */
	@Override
	public int orderCount() {
		return ADao.orderCount();
	}

	/**
	 * 작성자:신은지
	 * 1-4. 총매출
	 * @return
	 */
	@Override
	public String sales() {
		return ADao.sales();
	}

	/**
	 *  작성자 : 신으닞
	 *  1-5.최근 등록 브랜드 5개 
	 * @return
	 */
	@Override
	public ArrayList<Brand> BrandList() {
		return  ADao.BrandList();
	}

	/**
	 * 작성자 : 신은지
	 *  1-6.chart 여성
	 * @return
	 */
	@Override
	public int memberWCount() {
		return ADao.memberWCount();
	}
	
	/**
	 * 작성자 : 신은지
	 *  1-7.chart 남성
	 * @return
	 */
	@Override
	public int memberMCount() {
		return ADao.memberMCount();
	}
	
}
