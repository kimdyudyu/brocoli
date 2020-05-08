package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.admin.model.dao.AdminBrandDao;
import com.kh.brocoli.general.model.vo.Contact;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Entering_Question;

@Service("ABService")
public class AdminBrandServiceImpl implements AdminBrandService{

	@Autowired
	private AdminBrandDao ABDao;
	/**
	 *	작성자 : 신은지
	 *	1. 브랜드 list service
	 */
	@Override
	public ArrayList<Brand> selectBrandList() {
		return ABDao.selectBrandList();
	}
	
	/**
	 *  작성자 : 신은지
	 *	2. 브랜드 상세보기 service
	 */
	@Override
	public Brand selectBrandDetail(int brand_NO) {
		return ABDao.selectBrandDetail(brand_NO);
	}

	/**
	 *	작성자 : 신은지
	 *	3.브랜드 수정 service
	 */
	@Override
	public int brandUpdate(Brand b) {
		return ABDao.updateBrandUpdate(b);
	}

//	/**
//	 *	작성자 : 신은지
//	 *	4. 브랜드 삭제 service
//	 */
//	@Override
//	public int brandDelte(int brand_NO) {
//		return ABDao.deleteBrand(brand_NO);
//	}
	
	@Override
	public int brandDelte(int brand_NO) {
		// TODO Auto-generated method stub
		return 0;
	}

	/**
	 *	작성자 : 신은지
	 *	5. ajax 브랜드 유효성 검사
	 */
	@Override
	public int brandNameCheck(String brandName) {
		return ABDao.brandNameCheck(brandName);
	}

	/**
	 *	작성자 : 신은지
	 *	6. ajax 브랜드 ownerId1 유효성 검사
	 */
	@Override
	public int ownerId1Check(String ownerId) {
		return ABDao.ownerId1Check(ownerId);
	}
	
	/**
	 *	작성자 : 신은지
	 *	7. ajax 브랜드 ownerId2 유효성 검사
	 */
	@Override
	public int ownerId2Check(String ownerId) {
		return ABDao.ownerId2Check(ownerId);
	}
	
	/**
	 *	작성자 : 신은지
	 *	8. ajax 브랜드 ownerId3 유효성 검사
	 */
	@Override
	public int ownerId3Check(String ownerId) {
		return ABDao.ownerId3Check(ownerId);
	}

	/**
	 *	작성자 : 신은지
	 *	9. 브랜드 등록
	 */
	@Override
	public int brandEnroll(Brand b) {
		int brandEnroll = ABDao.brandEnroll(b);
		int brandOwnerUpdate = ABDao.brandOwnerUpdate(b);
		int result = brandEnroll + brandOwnerUpdate;
		
		return result;
	}

	/**
	 *  작성자 : 신은지
	 *  10. 오너 콘택트 목록
	 */
	@Override
	public ArrayList<Contact> selectOwnerContactList() {
		return ABDao.ownerContactList();
	}

	/**
	 *	작성자 : 신은지
	 *	12. 오너 콘택트 상세보기
	 */
	@Override
	public Contact ownerContactDetail(int ocId) {
		//읽음여부 업데이트
		ABDao.ownerCheckView(ocId);
		//상세보기
		return ABDao.ownerContactDetail(ocId);
	}

	/**
	 *	작성자 : 신은지
	 *	13. 오너 콘택트 게시판 글쓰기
	 */
	@Override
	public int ownerContactWrite(Contact c) {
		return ABDao.ownerContactWrite(c);
	}

	/**
	 *	작성자 : 신은지 
	 *	14. 오너 콘택트 게시판 수정하기 view
	 */
	@Override
	public Contact ownerContactUpdate(int con_NO) {
		return ABDao.ownerContactUpdate(con_NO);
	}

	/**
	 *	작성자 : 신은지
	 *	15. 오너 콘택트 게시판 수정 update
	 */
	@Override
	public int ownerContactUpdateSave(Contact c) {
		return ABDao.ownerContactUpdateSave(c);
	}

	/**
	 *	작성자 : 신은지
	 * 	16. 브랜드 삭제 
	 */
	@Override
	public int brandDelete(int brand_NO) {
		return ABDao.brandDelete(brand_NO);
	}

	/**
	 * 작성자 : 신은지
	 * 17. 브랜드 입점문의 list
	 */
	@Override
	public ArrayList<Entering_Question> brandApplyList() {
		return ABDao.brandApplyList();
	}



}
