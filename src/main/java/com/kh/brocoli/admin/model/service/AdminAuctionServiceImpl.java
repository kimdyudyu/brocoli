package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminAuctionDao;
import com.kh.brocoli.general.model.vo.Auction;

@Service("AAService")
public class AdminAuctionServiceImpl implements AdminAuctionService {

	@Autowired
	private AdminAuctionDao AADao;

	/**
	 * 작성자 : 신은지
	 * 1. 경매 list
	 */
	@Override
	public ArrayList<Auction> auctionList() {
		return AADao.auctionList();
	}

	/**
	 * 작성자 : 신은지
	 * 2. 경매 낙찰시 ajax
	 */
	@Override
	public int auctionWin(HashMap<String, String> hmap) {
		return AADao.auctionWin(hmap);
	}

	/**
	 * 작성자 : 신은지
	 * 3. 경매 폐찰시 ajax
	 */
	@Override
	public int auctionFail(HashMap<String, String> hmap) {
		return  AADao.auctionFail(hmap);
	}
}
