package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.model.dao.ownerOrderDao;
import com.kh.brocoli.owner.model.dao.ownerProductDao;
import com.kh.brocoli.product.model.vo.Statistics;

@Service("ownerOrderService")
public class ownerOrderServiceimpl implements ownerOrderService{

	//	@Autowired ownerProductDao oDao;
	@Autowired ownerOrderDao oDao;
	
	@Override
	public ArrayList<Statistics> incomeDaySelect(int bNO) {
		return oDao.selectIncomeDay(bNO);
	}

	@Override
	public ArrayList<Statistics> incomeMonthSelect(int bNO) {
		return oDao.selectIncomeMonth(bNO);
	}

	@Override
	public ArrayList<Statistics> incomeYearSelect(int bNO) {
		return oDao.selectIncomeYear(bNO);
	}

	@Override
	public ArrayList<Orders> orderProgress(int bNO) {
		return oDao.selectOrderProgress(bNO);
	}

	@Override
	public ArrayList<Orders> orderComplete(int bNO) {
		return oDao.selectOrderComplete(bNO);
	}

	@Override
	public ArrayList<Orders> orderReJect(int bNO) {
		return oDao.selectOrderReject(bNO);
	}

	@Override
	public ArrayList<Orders> orderChange(int bNO) {
		return oDao.selectOrderChange(bNO);
	}

	@Override
	public Orders orderDetail(int oNO) {
		return oDao.selectOrderDetail(oNO);
	}


	
	
	
	
	
	
	
}
