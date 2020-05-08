package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Change;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.Reject;
import com.kh.brocoli.product.model.vo.Product_Option;

@Repository("AODao")
public class AdminOrdersDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 작성자 : 신은지 
	 * 1. 주문 현황 목록 list Dao
	 * @return
	 */
	public ArrayList<Orders> selectOrdersList() {
		return (ArrayList)sqlSession.selectList("AdminOrders.selectOrdersList");
	}

	/**
	 * 작성자 : 신은지
	 * 2. 주문 현황 상태 변화
	 * @param orderStatus
	 * @return
	 */
	public int orderStatusChange(Orders orders) {
		return sqlSession.update("AdminOrders.orderStatusChange",orders);
	}

	/**
	 * 작성자 : 신은지
	 * 3. 교환 list
	 * @return
	 */
	public ArrayList<Change> selectChangeList() {
		return (ArrayList)sqlSession.selectList("AdminOrders.selectChangeList");
	}

	/**
	 * 작성자 : 신은지
	 * 3-2. 환불 list
	 * @return
	 */
	public ArrayList<Reject> selectRejectList() {
		return (ArrayList)sqlSession.selectList("AdminOrders.selectRejectList");
	}

	/**
	 * 작성자 :신은지
	 * 4.교환 modal
	 * @param chNO
	 * @return
	 */
	public ArrayList<Product_Option> orderChangeModal(int chPNO) {
		return (ArrayList)sqlSession.selectList("AdminOrders.orderChangeModal",chPNO);
	}

	/**
	 *  작성자 : 신은지
	 *  5. 교환 모달창 교환상태 저장
	 * @param hmap
	 * @return
	 */
	public int changeOption(HashMap<String, String> hmap) {
		return sqlSession.update("AdminOrders.changeOption",hmap);
	}

	/**
	 * 작성자 : 신은지 
	 * 5_1. 교환 모달창 주문 옵션 update
	 * @param hmap
	 * @return
	 */
	public int changeOption2(HashMap<String, String> hmap) {
		return sqlSession.update("AdminOrders.changeOption2",hmap);
	}

	/**
	 * 작성자 : 신은지
	 * 6. 반품시 수량 update
	 * @param hmap
	 * @return
	 */
	public int rejectAmount(HashMap<String, String> hmap) {
		return sqlSession.update("AdminOrders.rejectAmount",hmap);
	}

	/**
	 *  작성자 : 신은지
	 *  6-1. 반품시 상태 update
	 * @param hmap
	 * @return
	 */
	public int rejectStatus(HashMap<String, String> hmap) {
		return sqlSession.update("AdminOrders.rejectStatus",hmap);
	}

	/**
	 * 작성자 : 신은지 
	 * 6-2. 반품시 주문 페이지 상태 update
	 * @param hmap
	 * @return
	 */
	public int rejectOrderStatus(HashMap<String, String> hmap) {
		return sqlSession.update("AdminOrders.rejectOrderStatus",hmap);
	}
	
}
