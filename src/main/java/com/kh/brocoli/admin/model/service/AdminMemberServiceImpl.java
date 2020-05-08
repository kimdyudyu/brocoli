package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminMemberDao;
import com.kh.brocoli.member.model.vo.Member;

@Service("AMService")
public class AdminMemberServiceImpl implements AdminMemberService {

	@Autowired
	private AdminMemberDao AMDao;

	/**
	 * 작성자 : 신은지
	 * 1. 회원 리스트 service
	 */
	@Override
	public ArrayList<Member> selectMemberList() {
		return AMDao.selectMemberList();
	}

	/**
	 * 작성자:신은지
	 * 2. 회원 상세보기 service
	 */
	@Override
	public Member selectMemberDetail(String mId) {
		return AMDao.selectMemberDetail(mId);
	}

	/**
	 * 작성자 : 신은지
	 * 3. 회원 정보 수정 service
	 */
	@Override
	public int memberUpdate(Member m) {
		return AMDao.updateMemberUpdate(m);
	}

	/**
	 *	작성자: 신은지
	 *	4. 회원 정보 삭제 service
	 */
	@Override
	public int memberDelete(String mId) {
		return AMDao.deleteMemberDelete(mId);
	}

	/**
	 * 작성자: 신은지
	 * 5. owner 상세보기 service
	 */
	@Override
	public Member selectOwnerDetail(String mId) {
		return AMDao.selectOwnerDetail(mId);
	}



}
