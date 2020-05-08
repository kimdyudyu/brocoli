package com.kh.brocoli.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Cart;
import com.kh.brocoli.member.model.vo.OrderAdd;

@Repository("OaDao")
public class OrderAddDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public Cart selectCart(int ct_NO) {
		return sqlSession.selectOne("Cart-mapper.selectCart",ct_NO);
	}

	public int insertCard(OrderAdd add) {
		return sqlSession.insert("Cart-mapper.insertCartAdd",add);
	}

}
