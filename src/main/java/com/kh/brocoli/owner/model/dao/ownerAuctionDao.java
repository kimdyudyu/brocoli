package com.kh.brocoli.owner.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.general.model.vo.Auction;

@Repository("ownerAuctionDao")
public class ownerAuctionDao {

	@Autowired SqlSessionTemplate sqlSession;

	public ArrayList<Auction> SelectAuctionList(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerAuction-mapper.selectAuctionList",bNO);
	}

	public ArrayList<Auction> SelectbeforAuctionList(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerAuction-mapper.selectbeforAuctionList",bNO);
	}

	public int InsertAuctionBanner(Auction ac) {
		return sqlSession.insert("ownerAuction-mapper.insertAcutionBanner",ac);
	}

	public int UpdateAuctionBanner(Auction ac) {
		return sqlSession.insert("ownerAuction-mapper.updateAcutionBanner",ac);
	}
	
	public Auction SelectAuctionOne(int acNo) {
		return sqlSession.selectOne("ownerAuction-mapper.selectAcutionOne",acNo);
	}

	public int DeleteAuctionBanner(int acNo) {
		return sqlSession.delete("ownerAuction-mapper.deleteAcutionBanner",acNo);
	}

	
}
