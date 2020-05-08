package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.magazine.model.vo.Magazine;

@Repository("AMGDao")
public class AdminMagazineDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 *  작성자 : 신은지
	 *  1. 매거진 신청 list
	 * @return
	 */
	public ArrayList<Magazine> magazineList() {
		return (ArrayList)sqlSession.selectList("AdminMagazine.magazineList");
	}

	/** 작성자 : 신은지
	 *  2. 매거진 상세보기
	 * @param m_NO
	 * @return
	 */
	public Magazine magazineManagementDetail(int m_NO) {
		return sqlSession.selectOne("AdminMagazine.magazineManagementDetail",m_NO);
	}

	/**
	 *  작성자 : 신은지
	 *  3. 매거진 등록(승인)
	 * @param m_NO
	 * @return
	 */
	public int magazineEnroll(int m_NO) {
		return sqlSession.update("AdminMagazine.magazineEnroll",m_NO);
	}

	/**
	 * 작성자 : 신은지
	 * 4. 매거진 현황 list
	 * @return
	 */
	public ArrayList<Magazine> magazineUploadList() {
		return (ArrayList)sqlSession.selectList("AdminMagazine.magazineUploadList");
	}

	/**
	 * 작성자 : 신은지
	 * 5. 매거진 삭제
	 * @param m_NO
	 * @return
	 */
	public int magazineDelete(int m_NO) {
		return sqlSession.update("AdminMagazine.magazineDelete",m_NO);
	}
	
}
