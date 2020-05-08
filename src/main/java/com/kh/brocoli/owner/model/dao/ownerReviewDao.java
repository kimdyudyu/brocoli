package com.kh.brocoli.owner.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.product.model.vo.Review;
import com.kh.brocoli.product.model.vo.Review_Reply;

@Repository("ownerReviewDao")
public class ownerReviewDao {

	@Autowired SqlSessionTemplate sqlSession;
	
	public ArrayList<Review> SelectNoReadReview(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerReView-mapper.selectNoReadReviewList",bNO);
	}

	public ArrayList<Review_Reply> SelectNoReadReviewReply(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerReView-mapper.selectNoReadReviewReplyList",bNO);
	}

	public int insertReply(Review_Reply rr) {
		return sqlSession.insert("ownerReView-mapper.insertReply",rr);
	}

	public int updateReViewCheck(String r) {
		return sqlSession.update("ownerReView-mapper.updateReViewCheck",r);
	}

	public int updateReplyCheck(int r) {
		return sqlSession.update("ownerReView-mapper.updateReplyCheck",r);
	}

	public int deleteReply(int rrNO) {
		return sqlSession.update("ownerReView-mapper.deleteReply",rrNO);
	}

	public ArrayList<Review> SelectReadReview(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerReView-mapper.selectReadReviewList",bNO);
	}

	public ArrayList<Review_Reply> SelectReadReviewReply(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerReView-mapper.selectReadReviewReplyList",bNO);
	}

	
	
}
