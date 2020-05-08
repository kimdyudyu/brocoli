package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.model.dao.ownerOrderDao;
import com.kh.brocoli.owner.model.dao.ownerProductDao;
import com.kh.brocoli.owner.model.dao.ownerReviewDao;
import com.kh.brocoli.product.model.vo.Review;
import com.kh.brocoli.product.model.vo.Review_Reply;
import com.kh.brocoli.product.model.vo.Statistics;

@Service("ownerReViewService")
public class ownerReviewServiceimpl implements ownerReviewService{

	//	@Autowired ownerProductDao oDao;
	@Autowired ownerReviewDao oDao;

	@Override
	public ArrayList<Review> noReadReviewSelect(int bNO) {
		return oDao.SelectNoReadReview(bNO);
	}

	@Override
	public ArrayList<Review_Reply> noReadReviewReplySelect(int bNO) {
		return oDao.SelectNoReadReviewReply(bNO);
	}

	@Override
	public int replyInsert(Review_Reply rr) {
		return oDao.insertReply(rr);
	}

	@Override
	public int ReviewCheckUpdate(String r) {
		return oDao.updateReViewCheck(r);
	}

	@Override
	public int ReplyCheckUpdate(int r) {
		return oDao.updateReplyCheck(r);
	}

	@Override
	public int replyDelete(int rrNO) {
		return oDao.deleteReply(rrNO);
	}

	@Override
	public ArrayList<Review> readReviewSelect(int bNO) {
		return oDao.SelectReadReview(bNO);
	}

	@Override
	public ArrayList<Review_Reply> readReviewReplySelect(int bNO) {
		return oDao.SelectReadReviewReply(bNO);
	}
	
	
	
	
	
	
	
	
}
