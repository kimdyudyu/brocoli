package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.dao.CartDao;
import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.product.model.vo.ProductDetail;

@Service("cService")
public class CartServiceimpl implements CartService {

	@Autowired
	private CartDao cDao;

	@Override
	public int cInsert(Cart c) {
		return cDao.cInsert(c);
	}

	@Override
	public ArrayList<Cart> cartList(int ct_Mno) {
		return cDao.cartList(ct_Mno);
	}

	@Override
	public int deleteCart(int ct_NO) {
		return cDao.deleteCart(ct_NO);
	}
}
