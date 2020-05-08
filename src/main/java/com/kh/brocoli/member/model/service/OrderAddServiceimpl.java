package com.kh.brocoli.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.dao.OrderAddDao;
import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.member.model.vo.OrderAdd;

@Service("OaService")
public class OrderAddServiceimpl implements OrderAddService {

	@Autowired
	private OrderAddDao OaDao;
	
	@Override
	public Cart selectCart(int ct_NO) {
		return OaDao.selectCart(ct_NO);
	}

	@Override
	public int insertCartAdd(OrderAdd add) {
		return OaDao.insertCard(add);
	}

}
