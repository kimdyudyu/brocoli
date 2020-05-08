package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.magazine.model.vo.Magazine;

public interface AdminMagazineService {

	/**
	 * 작성자 : 신은지
	 * 1. 매거진 신청 list
	 * @return
	 */
	ArrayList<Magazine> magazineList();

	/**
	 * 작성자 : 신은지
	 * 2. 매거진 상세보기
	 * @param m_NO
	 * @return
	 */
	Magazine magazineManagementDetail(int m_NO);

	/**
	 * 작성자 : 신은지
	 * 3. 매거진 등록(승인)
	 * @param m_NO
	 * @return
	 */
	int magazineEnroll(int m_NO);

	/**
	 * 작성자 : 신은지
	 * 4. 매거진 현황 list
	 * @return
	 */
	ArrayList<Magazine> magazineUploadList();

	/**
	 * 작성자 : 신은지
	 * 5. 매거진 삭제
	 * @param m_NO
	 * @return
	 */
	int magazineDelete(int m_NO);

}
