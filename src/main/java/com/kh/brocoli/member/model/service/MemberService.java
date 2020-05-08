package com.kh.brocoli.member.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.brocoli.general.model.vo.Auction;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.ProductDetail;
import com.kh.brocoli.product.model.vo.QNAProduct;
import com.kh.brocoli.product.model.vo.QnAComment;
import com.kh.brocoli.product.model.vo.Review;
import com.kh.brocoli.product.model.vo.Review_Reply;

public interface MemberService {

	/**
	 * 작성자 : 윤석훈
	 * 메인 페이지 옥션
	 * @return
	 */
	ArrayList<Auction> selectList();
	
	/**
	 * 작성자 : 윤석훈  
	 * 메인 페이지 랭킹
	 * @return
	 */
	ArrayList<Product> selectpList();

	
	
	/**
	 * 작성자 : 윤석훈
	 * 메인 페이지 이벤트
	 * @return
	 */
	ArrayList<Product> selectEList();

	/**
	 * 작성자 : 윤석훈
	 * 브랜드 페이지 브랜드명 출력
	 * @return
	 */
	ArrayList<Brand> selectbList();
	
	
	/**
	 * 작성자 : 윤석훈
	 * 브랜드 페이지 브랜드별 상품 출력
	 * @param brandName
	 * @return
	 */
	ArrayList<Brand> selectbpList(String b_Name);

	/**
	 * 작성자 : 윤석훈
	 * 상품 페이지 전체 출력
	 * @return
	 */
	ArrayList<Product> selectapList();


	/**
	 * 작성자 : 윤석훈
	 * 상품 디테일
	 * @param p_NO
	 * @return
	 */
	ArrayList<ProductDetail> selectpDetail(String p_NO);

	/**
	 * 일별 랭킹
	 * @return
	 */
	ArrayList<Product> selectdayList();

	/**
	 * 월별 랭킹
	 * @return
	 */
	ArrayList<Product> selectmonthList();

	/**
	 * 년별 랭킹
	 * @return
	 */
	ArrayList<Product> selectyearList();

	/**
	 * 옵션 선택
	 * @return
	 */
	ArrayList<ProductDetail> selectOption(HashMap<String,String> hmap);

	/**
	 * 상품qna 입력
	 * @param pq
	 * @return
	 */
	int insertQnaCommant(QNAProduct pq);

	/**
	 * 상품 qna 출력
	 * @param pq_P_No
	 * @return
	 */
	ArrayList<QnAComment> selectQnaCommant(String pq_P_No);

	/**
	 * 상품 qna 관리자 출력
	 * @return
	 */
	ArrayList<QnAComment> selectQnaReCommant();

	/**
	 * 상품 qna 댓글 삭제
	 * @param pq_No
	 * @return
	 */
	int deleteqna(String pq_No);

	/**
	 * 옵션 중복제거
	 * @param p_NO
	 * @return
	 */
	ArrayList<ProductDetail> selectOption1(String p_NO);

	/**
	 * 주문내역확인
	 * @param hmap
	 * @return
	 */
	ArrayList<Orders> selectorder(HashMap<String, String> hmap);

	/**
	 * 리뷰 작성
	 * @param re
	 * @return
	 */
	int insertreviewCommant(Review re);

	/**
	 * 리뷰 리스트 출력
	 * @param v_P_NO
	 * @return
	 */
	ArrayList<Review> selectReviewCommant(int v_P_NO);

	/**
	 * 리뷰 관리자 리스트 출력
	 * @return
	 */
	ArrayList<Review_Reply> selectReviewReCommant();

	/**
	 * 리뷰 댓글 삭제
	 * @param v_NO
	 * @return
	 */
	int deletereview(String v_NO);


	/**
	 * 리뷰 평점
	 * @param v_P_NO 
	 * @return
	 */
	ArrayList<Review> selectAvgReview(int v_P_NO);



	


}








	

