package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.general.model.vo.Auction;

@Repository("AADao")
public class AdminAuctionDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 *  작성자 : 신은지
	 *  1. 경매 list
	 * @return
	 */
	public ArrayList<Auction> auctionList() {
		return (ArrayList)sqlSession.selectList("AdminAuction.auctionList");
	}

	/**
	 *  작성자 : 신은지
	 *  2. 경매 낙찰시 ajax
	 * @param hmap
	 * @return
	 */
	public int auctionWin(HashMap<String, String> hmap) {
		return sqlSession.update("AdminAuction.auctionWin",hmap);
	}

	/**
	 * 작성자 : 신은지
	 * 3. 경매 폐찰시 ajax
	 * @param hmap
	 * @return
	 */
	public int auctionFail(HashMap<String, String> hmap) {
		return sqlSession.update("AdminAuction.auctionFail",hmap);
	}


}
