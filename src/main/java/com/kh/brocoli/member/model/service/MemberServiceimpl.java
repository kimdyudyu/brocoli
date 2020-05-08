package com.kh.brocoli.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Random;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.dao.MemberDao;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.ProductDetail;
import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QnAComment;
import com.kh.brocoli.product.model.vo.Review;
import com.kh.brocoli.product.model.vo.Review_Reply;


@Service("mService")
public class MemberServiceimpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public ArrayList<Auction> selectList() {
		return mDao.selectList();
	}

	
	@Override
	public ArrayList<Product> selectpList() {
		return mDao.selectpList();
	}
	
	@Override
	public ArrayList<Product> selectEList() {
		return mDao.selectEList();
	}


	@Override
	public ArrayList<Brand> selectbList() {
		return mDao.selectbList();
	}

	@Override
	public ArrayList<Brand> selectbpList(String b_Name) {
		return mDao.selectbpList(b_Name);
	}


	@Override
	public ArrayList<Product> selectapList() {
		return mDao.selectapList();
	}


	@Override
	public ArrayList<ProductDetail> selectpDetail(String p_NO) {
		return mDao.selectpDetail(p_NO);
	}


	@Override
	public ArrayList<Product> selectdayList() {
		return mDao.selectdayList();
	}


	@Override
	public ArrayList<Product> selectmonthList() {
		return mDao.selectmonthList();
	}


	@Override
	public ArrayList<Product> selectyearList() {
		return mDao.selectyearList();
	}


	@Override
	public ArrayList<ProductDetail> selectOption(HashMap<String,String> hmap) {
		return mDao.selectOption(hmap);
	}


	@Override
	public int insertQnaCommant(QNAProduct pq) {
		return mDao.insertQnaCommant(pq);
	}


	@Override
	public ArrayList<QnAComment> selectQnaCommant(String pq_P_No) {
		return mDao.selectQnaCommant(pq_P_No);
	}


	@Override
	public ArrayList<QnAComment> selectQnaReCommant() {
		return mDao.selectQnaRecommant();
	}


	@Override
	public int deleteqna(String pq_No) {
		return mDao.deleteqna(pq_No);
	}


	@Override
	public ArrayList<ProductDetail> selectOption1(String p_NO) {
		return mDao.selectOption(p_NO);
	}


	@Override
	public ArrayList<Orders> selectorder(HashMap<String, String> hmap) {
		return mDao.selectorder(hmap);
	}


	@Override
	public int insertreviewCommant(Review re) {
		return mDao.insertrevieCommant(re);
	}


	@Override
	public ArrayList<Review> selectReviewCommant(int v_P_NO) {
		return mDao.selectReviewCommant(v_P_NO);
	}


	@Override
	public ArrayList<Review_Reply> selectReviewReCommant() {
		return mDao.selectReviewReCommant();
	}


	@Override
	public int deletereview(String v_NO) {
		return mDao.deletereview(v_NO);
	}


	@Override
	public ArrayList<Review> selectAvgReview(int v_P_NO) {
		return mDao.selectAvgReview(v_P_NO);
	}


}

