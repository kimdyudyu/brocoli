package com.kh.brocoli.admin.model.service;

import java.util.ArrayList;

import com.kh.brocoli.general.model.vo.Contact;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Entering_Question;

public interface AdminBrandService {

	/**
	 * 작성자 : 신은지
	 * 1. 브랜드 목록 
	 * @return
	 */
	ArrayList<Brand> selectBrandList();

	/**
	 * 작성자 : 신은지
	 * 2. 브랜드 상세보기
	 * @param brand_NO
	 * @return
	 */
	Brand selectBrandDetail(int brand_NO);

	/**
	 * 작성자 : 신은지
	 * 3. 브랜드 수정
	 * @param b
	 * @return
	 */
	int brandUpdate(Brand b);

	/**
	 * 작성자 : 신은지
	 * 4. 브랜드 삭제 (상태Y=>N)
	 * @param brand_NO
	 * @return
	 */
	int brandDelte(int brand_NO);

	/**
	 * 작성자 : 신은지
	 * 5. 브랜드 등록시 브랜드명 유효성검사
	 * @param brandName
	 * @return
	 */
	int brandNameCheck(String brandName);

	/**
	 * 작성자 : 신은지
	 * 6. 브랜드 등록시 ownerId1 유효성검사
	 * @param ownerId
	 * @return
	 */
	int ownerId1Check(String ownerId);
	
	/**
	 * 작성자 : 신은지
	 * 7. 브랜드 등록시 ownerId2 유효성검사
	 * @param ownerId
	 * @return
	 */
	int ownerId2Check(String ownerId);
	
	/**
	 * 작성자 : 신은지
	 * 8. 브랜드 등록시 ownerId3 유효성검사
	 * @param ownerId
	 * @return
	 */
	int ownerId3Check(String ownerId);

	/**
	 * 작성자 : 신은지
	 * 9. 브랜드 등록
	 * @param b
	 * @return
	 */
	int brandEnroll(Brand b);

	/**
	 * 작성자 : 신은지
	 * 10. 오너 콘택트 목록
	 * @return
	 */
	ArrayList<Contact> selectOwnerContactList();

	/**
	 * 작성자  : 신은지
	 * 12. 오너 콘택트 상세보기
	 * @param ocId
	 * @return
	 */
	Contact ownerContactDetail(int ocId);

	/**
	 * 작성자 : 신은지
	 * 13. 오너 콘택트 게시판 글쓰기
	 * @param c
	 * @return
	 */
	int ownerContactWrite(Contact c);

	/**
	 * 작성자 : 신은지
	 * 14. 오너 콘택트 게시판 수정 view
	 * @param ocNO
	 * @return
	 */
	Contact ownerContactUpdate(int con_NO);

	/**
	 * 작성자 : 신은지
	 * 15. 오너 콘택트 게시판 수정 update
	 * @param c
	 * @return
	 */
	int ownerContactUpdateSave(Contact c);

	/**
	 * 작성자 : 신은지
	 * 16. 브랜드 삭제
	 * @param brand_NO
	 * @return
	 */
	int brandDelete(int brand_NO);

	/**
	 * 작성자 : 신은지
	 * 17. 브랜드 입점문의 list
	 * @return
	 */
	ArrayList<Entering_Question> brandApplyList();

	
}
