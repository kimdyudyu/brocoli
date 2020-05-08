package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.owner.model.dao.ownerAuctionDao;

@Service("ownerAuctionService")
public class ownerAuctionServiceImpl implements ownerAuctionService{

	@Autowired ownerAuctionDao oDao;

	@Override
	public ArrayList<Auction> auctionListSelect(int bNO) {
		return oDao.SelectAuctionList(bNO);
	}

	@Override
	public ArrayList<Auction> auctionbeforListSelect(int bNO) {
		return oDao.SelectbeforAuctionList(bNO);
	}

	@Override
	public Auction auctionBannerInsert(Auction ac) {
		int acNo = 0;
		int insertResult = oDao.InsertAuctionBanner(ac);
		acNo = ac.getAc_No();
		Auction result = new Auction();
		
		if(insertResult > 0) {
			result = oDao.SelectAuctionOne(acNo);
		}else {
			System.out.println("옥션 ServiceImpl insert 실패.");
		}
		return result;
	}

	@Override
	public Auction auctionBannerUpdate(Auction ac) {
		int acNo = ac.getAc_No();
		int updateResult = oDao.UpdateAuctionBanner(ac);
		Auction result = new Auction();
		if(updateResult > 0) {
			result = oDao.SelectAuctionOne(acNo);
		}else {
			System.out.println("옥션 ServiceImpl Update 실패.");
		}
		return result;
	}

	@Override
	public Auction auctionDelete(Auction ac) {
		int acNo = ac.getAc_No();
		int deleteResult = oDao.DeleteAuctionBanner(acNo);
		Auction result = new Auction();
		if(deleteResult > 0 ) {
			result = oDao.SelectAuctionOne(acNo);
		}else {
			System.out.println("옥션 ServiceImpl Delete 실패");
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
}
