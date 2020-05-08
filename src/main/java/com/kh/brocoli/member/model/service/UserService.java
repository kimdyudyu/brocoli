package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import com.kh.brocoli.magazine.model.vo.Magazine2;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.OrderAdd;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.trackOrders;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Entering_Question;
import com.kh.brocoli.product.model.vo.Product;

public interface UserService {

	/**
	 * 작성자 : 윤석훈
	 * 회원 로그인
	 * @param m
	 * @return
	 */
	Member loginMember(Member m);
	
	/**
	 * 작성자 : 임현섭
	 * ID 중복체크
	 * @param id
	 * @return
	 */
	int idCheck(String id);

	/**
	 * 작성자 : 임현섭
	 * 회원가입 
	 * @param m
	 * @return
	 */
	int insertMember(Member m);

	/**
	 * 작성자 : 임현섭
	 * mail 중복체크
	 * @param email
	 * @return
	 */
	int mailCheck(String email);
	
	/**
	 * 작성자 : 임현섭
	 * 아이디 찾기
	 * @param email
	 * @return
	 */
	String mailCheck2(String email);


	/**
	 * 작성자 : 임현섭
	 * 비밀번호 차지
	 * @param id
	 * @param email
	 * @return
	 */
	int pwdFind(Member m);

	
    /**
     * 작성자 임현섭
     * 비밀번호 찾기 비밀번호 수정
     * @param m
     * @return
     * @throws Exception
     */
    public int newPassword(Member m) throws Exception;

	/**
	 * 작성자 임현섭
	 * 입점
	 * @param b
	 * @return
	 */
	public int sEnter(Entering_Question b);

	/**
	 * 작성자 임현섭
	 * 브랜드명 중복체크
	 * @param name
	 * @return
	 */
	public int bNameCheck(String name);

	/**
	 * 작성자 임현섭
	 * 조회수 측정
	 * @return
	 */
	int getListCount3();

	/**
	 * 작성자 임현섭
	 * 매거진 목록 조회용
	 * @return
	 */
	ArrayList<Magazine2> selectmList();

	/**
	 * 작성자 임현섭
	 * 메거진 디테일
	 * @param m_NO
	 * @return
	 */
	Magazine2 selectMagazine(int m_NO);

	/**
	 * 작성자 임현섭
	 * 월별 매거진 갯수 조회
	 * @return
	 */
	

	int selectM1();

	int selectM2();

	int selectM3();

	int selectM4();

	int selectM5();

	int selectM6();

	int selectM7();

	int selectM8();

	int selectM9();

	int selectM10();

	int selectM11();

	int selectM12();

	/**
	 * 작성자 임현섭
	 * 월별 매거진 조회
	 * @return
	 */
	ArrayList<Magazine2> selectm1List();

	ArrayList<Magazine2> selectm2List();

	ArrayList<Magazine2> selectm3List();

	ArrayList<Magazine2> selectm4List();

	ArrayList<Magazine2> selectm5List();

	ArrayList<Magazine2> selectm6List();

	ArrayList<Magazine2> selectm7List();

	ArrayList<Magazine2> selectm8List();

	ArrayList<Magazine2> selectm9List();

	ArrayList<Magazine2> selectm10List();

	ArrayList<Magazine2> selectm11List();

	ArrayList<Magazine2> selectm12List();

	/**
	 * 작성자 임현섭
	 * 매거진창 연관상품 조회
	 * @param mno
	 * @return
	 */
	ArrayList<Product> selectpList(int mno);

	/**
	 * 작성자 임현섭
	 * 검색-브랜드
	 * @param keyword
	 * @return
	 */
	ArrayList<Brand> searchBrand(String keyword);

	/**
	 * 작성자 임현섭
	 * 검색-상품
	 * @param keyword
	 * @return
	 */
	ArrayList<Product> searchProduct(String keyword);

	/**
	 * 작성자 임현섭
	 * 결과내 재검색-브랜드
	 * @param keyword
	 * @param keyword2
	 * @return
	 */
	ArrayList<Brand> searchBrand2(String keyword, String keyword2);

	/**
	 * 작성자 임현섭
	 * 결과내 재검색-상품
	 * @param keyword
	 * @param keyword2
	 * @return
	 */
	ArrayList<Product> searchProduct2(String keyword, String keyword2);

	/**
	 * 작성자 임현섭
	 * 최근 배송 조회용
	 * @param m
	 * @return
	 */
	ArrayList<trackOrders> recentCheck(int mno);

	/**
	 * 작성자 임현섭
	 * 배송지 선택창 상품조회용
	 * @param mno
	 * @return
	 */
	ArrayList<OrderAdd> cartCheck(int mno);

	/**
	 * 배송지 선택창 상품 삭제
	 * @param ct_NO
	 * @return
	 */
	int deleteOrder(int ct_NO);

	/**
	 * 결제 후 DB 업데이트
	 * @param mno
	 * @param oa_Mno
	 * @return
	 */
	int updatePay(int mno, int total, Orders order);

	
 
}








	

