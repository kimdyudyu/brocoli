package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminSalesDao;
import com.kh.brocoli.member.model.vo.Orders;

@Service("ASService")
public class AdminSalesServiceImpl implements AdminSalesService{
	
	@Autowired
	private AdminSalesDao ASDao;

	/**
	 * 작성자 : 신은지
	 * 1. 매출 검색 list
	 */
	@Override
	public ArrayList<Orders> selectSalesList() {
		return ASDao.selectSalesList();
	}

	/**
	 * 작성자 : 신은지
	 * 2. 매출 검색(날짜,브랜드) list
	 */
	@Override
	public ArrayList<Orders> searchList(HashMap<String, String> map) {
		return ASDao.searchList(map);
	}

}

