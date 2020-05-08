package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.brocoli.general.model.vo.Auction;

public interface AdminAuctionService  {

	/**
	 * 작성자 : 신은지
	 * 1.경매 list
	 * @return
	 */
	ArrayList<Auction> auctionList();

	/**
	 * 작성자  : 신은지
	 * 2. 경매 낙찰시 ajax
	 * @param hmap
	 * @return
	 */
	int auctionWin(HashMap<String, String> hmap);

	/**
	 * 작성자 : 신은지
	 * 3. 경매 폐찰시 ajax
	 * @param hmap
	 * @return
	 */
	int auctionFail(HashMap<String, String> hmap);

}
