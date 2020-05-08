package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminMagazineDao;
import com.kh.brocoli.magazine.model.vo.Magazine;

@Service("AMGService")
public class AdminMagazineServiceImpl implements AdminMagazineService {
	
	
	@Autowired
	private AdminMagazineDao AMGDao;

	/**
	 * 작성자 : 신은지 
	 * 1. 매거진 신청 list
	 */
	@Override
	public ArrayList<Magazine> magazineList() {
		return AMGDao.magazineList();
	}

	/**
	 * 작성자 : 신은지
	 * 2. 매거진 detail
	 */
	@Override
	public Magazine magazineManagementDetail(int m_NO) {
		return AMGDao.magazineManagementDetail(m_NO);
	}

	/**
	 * 작성자 : 신은지
	 * 3. 매거진 등록(승인)
	 */
	@Override
	public int magazineEnroll(int m_NO) {
		return  AMGDao.magazineEnroll(m_NO);
	}

	/**
	 * 작성자 : 신은지
	 * 4. 매거진 현황 list
	 */
	@Override
	public ArrayList<Magazine> magazineUploadList() {
		return AMGDao.magazineUploadList();
	}

	/**
	 * 작성자 : 신은지
	 * 5. 매거진 삭제
	 */
	@Override
	public int magazineDelete(int m_NO) {
		return AMGDao.magazineDelete(m_NO);
	}

}
