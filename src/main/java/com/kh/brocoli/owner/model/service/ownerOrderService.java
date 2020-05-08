package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.product.model.vo.Statistics;

public interface ownerOrderService {

	ArrayList<Statistics> incomeDaySelect(int brand_NO);

	ArrayList<Statistics> incomeMonthSelect(int brand_NO);

	ArrayList<Statistics> incomeYearSelect(int brand_NO);

	ArrayList<Orders> orderProgress(int brand_NO);

	ArrayList<Orders> orderComplete(int brand_NO);

	ArrayList<Orders> orderReJect(int bNO);

	ArrayList<Orders> orderChange(int bNO);

	Orders orderDetail(int oNO);




	
	
	
	
	
	
	
}
