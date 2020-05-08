package com.kh.brocoli.member.model.service;

import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.member.model.vo.OrderAdd;

public interface OrderAddService {

	Cart selectCart(int ct_NO);

	int insertCartAdd(OrderAdd add);

}
