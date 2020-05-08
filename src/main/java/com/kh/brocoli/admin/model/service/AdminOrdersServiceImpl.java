package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminOrdersDao;
import com.kh.brocoli.member.model.vo.Change;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.Reject;
import com.kh.brocoli.product.model.vo.Product_Option;

@Service("AOSerivce")
public class AdminOrdersServiceImpl implements AdminOrdersService{

	@Autowired
	private AdminOrdersDao AODao;

	/**
	 *	작성자 : 신은지
	 *	1. 주문현황 목록 list
	 */
	@Override
	public ArrayList<Orders> selectOrdersList() {
		return AODao.selectOrdersList();
	}

	/**
	 * 작성자 : 신은지
	 * 2. Ajax 주문현황 상태 변경
	 */
	@Override
	public int orderStatusChange(Orders orders) {
		return AODao.orderStatusChange(orders);
	}

	/**
	 * 작성자 : 신은지
	 * 3. 교환 list
	 */
	@Override
	public ArrayList<Change> selectChangeList() {
		return AODao.selectChangeList();
	}

	/**
	 *	작성자: 신은지
	 *  3-2. 환불 list
	 */
	@Override
	public ArrayList<Reject> selectRejectList() {
		return AODao.selectRejectList();
	}

	/**
	 * 작성자 : 신은지
	 * 4. 교환 modal
	 */
	@Override
	public ArrayList<Product_Option> orderChangeModal(int chPNO) {
		return AODao.orderChangeModal(chPNO);
	}

	/**
	 * 작성자 : 신은지
	 * 5. 교환 모달창 저장
	 */
	@Override
	public int changeOption(HashMap<String, String> hmap) {
		int changeOption = AODao.changeOption(hmap);
		int changeOption2 = AODao.changeOption2(hmap);
		
		int result= changeOption+changeOption2;
		
		if(result>0) {
			return result;
		}else {
		return 0;
		}
	}

	/**
	 * 작성자 : 신은지
	 * 6. 반품
	 */
	@Override
	public int orderReject(HashMap<String, String> hmap) {
		int rejectAmount = AODao.rejectAmount(hmap);
		int rejectStatus = AODao.rejectStatus(hmap);
		int rejectOrderStatus = AODao.rejectOrderStatus(hmap);
		
		int result=rejectAmount+rejectStatus+rejectOrderStatus;
				
		if(result>0) {
			return result;
		}else {
		return 0;
		}
	}
}
