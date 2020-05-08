package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.brocoli.member.model.vo.Orders;

public interface AdminSalesService {

	/**
	 * 작성자 : 신은지
	 * 1. 매출 검색 list
	 * @return
	 */
	ArrayList<Orders> selectSalesList();

	/**
	 * 작성자  : 신은지 
	 * 2. 매출 검색(날짜,브랜드) list
	 * @return
	 */
	ArrayList<Orders> searchList(HashMap<String,String> map);

}
