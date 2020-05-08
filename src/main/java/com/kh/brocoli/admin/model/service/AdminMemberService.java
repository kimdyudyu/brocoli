package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Member;

public interface AdminMemberService {

	/**
	 * 작성자: 신은지
	 * 1. 회원 리스트 
	 * @return
	 */
	ArrayList<Member> selectMemberList();

	/**
	 * 작성자: 신은지
	 * 2. 회원 상세보기 
	 * @param mId
	 * @return
	 */
	Member selectMemberDetail(String mId);

	/**
	 * 작성자 : 신은지
	 * 3. 회원 정보 수정
	 * @param m
	 * @return
	 */
	int memberUpdate(Member m);

	/**
	 * 작성자 : 신은지
	 * 4. 회원 정보 삭제
	 * @param mId
	 * @return
	 */
	int memberDelete(String mId);

	/** 작성자  : 신은지
	 * 5. owner 상세보기
	 * @param mId
	 * @return
	 */
	Member selectOwnerDetail(String mId);




}
