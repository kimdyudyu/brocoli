package com.kh.brocoli.member.model.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.SearchCondition;
import com.kh.brocoli.member.model.vo.Change;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.Reject;
import com.kh.brocoli.product.model.vo.Review;


public interface MypageService {
	
	/**
	 * 작성자 : 김주희
	 * 회원 탈퇴
	 * @param mId
	 * @return
	 */
	int deleteMember(Member m);


	/**
	 * 작성자 : 김주희
	 * 회원 수정
	 * @param m
	 * @return
	 */
	int updateMember(Member m);


	/**
	 * 작성자 : 김주희
	 * 비밀번호 확인
	 * @param pwd
	 * @return
	 */
	int pwdCheck(String password);


	/**
	 * 작성자 : 김주희
	 * 내가쓴글 게시판 총 횟수
	 * @return
	 */
	int getmyListCount();


	/**
	 * 게시판 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<QnA> myselectList(PageInfo pi, Member m);


	/**
	 * 검색
	 * @param sc
	 * @return
	 */
	int getSearchResultListCount(SearchCondition sc);

    ArrayList<QnA> selectSearchResultList(HttpSession session, SearchCondition sc, PageInfo pi);


	/**
	 * 주문정보
	 * @param m
	 * @return
	 */
	ArrayList<Orders> myorderList(Member m);


	/**
	 * 교환리스트
	 * @param m
	 * @return
	 */
	ArrayList<Orders> P_change(String or_NO);


	/**
	 * 반품리스트
	 * @param or_No
	 * @return
	 */
	ArrayList<Orders> P_reject(String or_No);


	/**
	 * 교환완료
	 * @param selectProduct
	 * @return
	 */
	int C_complete(Change ch);


	/**
	 * 반품완료
	 * @param re
	 * @return
	 */
	int R_complete(Reject re);


	/**
	 * 상세보기
	 * @param or_NO
	 * @return
	 */
	ArrayList<Orders> trackprocess(String or_No);


	/**
	 * 기간별 조회
	 * @param od
	 * @return
	 */
	ArrayList<Orders> selectDetail(Orders od);


	/**
	 * 날짜 지정 조회
	 * @param hmap
	 * @return
	 */
	ArrayList<Orders> searchDetail(HashMap<String, Date> hmap);




	












}
