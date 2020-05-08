package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.product.model.vo.Review;
import com.kh.brocoli.product.model.vo.Review_Reply;
import com.kh.brocoli.product.model.vo.Statistics;

public interface ownerReviewService {

	ArrayList<Review> noReadReviewSelect(int bNO);

	ArrayList<Review_Reply> noReadReviewReplySelect(int bNO);

	int replyInsert(Review_Reply rr);

	int ReviewCheckUpdate(String rNo);

	int ReplyCheckUpdate(int rNO);

	int replyDelete(int rrNO);

	ArrayList<Review> readReviewSelect(int bNO);

	ArrayList<Review_Reply> readReviewReplySelect(int bNO);

	
	
	
	
	
	
	
}
