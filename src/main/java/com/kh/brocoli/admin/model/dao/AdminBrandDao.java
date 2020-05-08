package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.general.model.vo.Contact;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Entering_Question;

@Repository("ABDao")
public class AdminBrandDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 작성자 : 신은지 
	 * 1. 브랜드 list dao
	 * @return
	 */
	public ArrayList<Brand> selectBrandList() {
		return (ArrayList) sqlSession.selectList("AdminBrand.selectBrandList");
	}

	/**
	 * 작성자: 신은지 
	 * 2. 브랜드 상세보기 dao
	 * @param brand_NO
	 * @return
	 */
	public Brand selectBrandDetail(int brand_NO) {
		return sqlSession.selectOne("AdminBrand.selectBrandDetail", brand_NO);
	}

	/**
	 * 작성자 : 신은지 
	 * 3. 브랜드 수정 dao
	 * @param b
	 * @return
	 */
	public int updateBrandUpdate(Brand b) {
		System.out.println("브랜드 수정 DAO: "+ b);
		return sqlSession.update("AdminBrand.updateBrand", b);
	}
	
	
	/**
	 * 작성자 : 신은지 
	 * 4. 브랜드 삭제 dao
	 * @param brand_NO
	 * @return
	 */
		/*
		 * public int deleteBrand(int brand_NO) { return
		 * sqlSession.update("AdminBrand.deleteBrand", ); }
		 */

	/**
	 * 작성자 : 신은지
	 * 5. ajax 브랜드이름 유효성 검사 dao
	 * @param brandName
	 * @return
	 */
	public int brandNameCheck(String brandName) {
		return sqlSession.selectOne("AdminBrand.brandNameCheck",brandName);
	}

	/**
	 * 작성자 : 신은지
	 * 6. ajax 브랜드 ownerId1 유효성 검사 dao
	 * @param ownerId
	 * @return
	 */
	public int ownerId1Check(String ownerId) {
		return sqlSession.selectOne("AdminBrand.ownerId1Check",ownerId);
	}
	
	/**
	 * 작성자 : 신은지
	 * 7. ajax 브랜드 ownerId2 유효성 검사 dao
	 * @param ownerId
	 * @return
	 */
	public int ownerId2Check(String ownerId) {
		return sqlSession.selectOne("AdminBrand.ownerId2Check",ownerId);
	}
	
	/**
	 * 작성자 : 신은지
	 * 8. ajax 브랜드 ownerId3 유효성 검사 dao
	 * @param ownerId
	 * @return
	 */
	public int ownerId3Check(String ownerId) {
		return sqlSession.selectOne("AdminBrand.ownerId3Check",ownerId);
	}

	/**
	 * 	작성자 : 신은지
	 *	9. 브랜드 등록
	 * @param b
	 * @return
	 */
	public int brandEnroll(Brand b) {
		return sqlSession.insert("AdminBrand.brandEnroll",b);
	}

	/**
	 * 작성자 : 신은지
	 * 9_2. 브랜드 등록시 owner 권한 수정
	 * @param b
	 * @return
	 */
	public int brandOwnerUpdate(Brand b) {
		return sqlSession.update("AdminBrand.brandOwnerUpdate",b);
	}

	/**
	 * 작성자 : 신은지
	 * 10. 오너 콘택트 목록
	 * @return
	 */
	public ArrayList<Contact> ownerContactList() {
		return (ArrayList)sqlSession.selectList("AdminBrand.ownerContactList");
	}

	/**
	 * 작성자  : 신은지
	 * 12. 오너 콘택트 상세보기
	 * @param ocId
	 * @return
	 */
	public Contact ownerContactDetail(int ocId) {
		return sqlSession.selectOne("AdminBrand.ownerContactDetail",ocId);
	}

	/**
	 * 작성자 : 신은지
	 * 12_1. 오너 콘택트 게시판 읽음여부 업데이트
	 * @param ocId
	 */
	public void ownerCheckView(int ocId) {
		sqlSession.selectOne("AdminBrand.ownerCheckView",ocId);
		
	}
	
	/**
	 *	작성자 : 신은지
	 *	13. 오너 콘택트 게시판 글쓰기
	 * @param c
	 * @return
	 */
	public int ownerContactWrite(Contact c) {
		return sqlSession.insert("AdminBrand.ownerContactWrite",c);
	}

	/**
	 *  작성자 : 신은지
	 *  14. 오너 콘택트 게시판 수정하기 view
	 * @param ocNO
	 * @return
	 */
	public Contact ownerContactUpdate(int ocNO) {
		return sqlSession.selectOne("AdminBrand.ownerContactUpdate",ocNO);
	}

	/**
	 * 	작성자 : 신은지
	 * 	15. 오너 콘택트 게시판 수정 update
	 * @param c
	 * @return
	 */
	public int ownerContactUpdateSave(Contact c) {
		return sqlSession.update("AdminBrand.ownerContactUpdateSave",c);
	}

	/**
	 *  작성자 : 신은지
	 *  16. 브랜드 삭제
	 * @param brand_NO
	 * @return
	 */
	public int brandDelete(int brand_NO) {
		return sqlSession.update("AdminBrand.brandDelete",brand_NO);
	}

	/** 작성자 : 신은지
	 *  17. 브랜드 입점문의 list
	 * @return
	 */
	public ArrayList<Entering_Question> brandApplyList() {
		return (ArrayList)sqlSession.selectList("AdminBrand.brandApplyList");
	}


}
