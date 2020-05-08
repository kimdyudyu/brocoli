package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.product.model.vo.ProductDetail;

public interface CartService {

	public int cInsert(Cart c);

	public ArrayList<Cart> cartList(int ct_Mno);

	public int deleteCart(int ct_NO);

}
