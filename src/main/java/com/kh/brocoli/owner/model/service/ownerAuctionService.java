package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import com.kh.brocoli.general.model.vo.Auction;

public interface ownerAuctionService {

	ArrayList<Auction> auctionListSelect(int bNO);

	ArrayList<Auction> auctionbeforListSelect(int bNO);

	Auction auctionBannerInsert(Auction ac);

	Auction auctionBannerUpdate(Auction ac);

	Auction auctionDelete(Auction ac);

}
