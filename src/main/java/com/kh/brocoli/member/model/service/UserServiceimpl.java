package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.magazine.model.vo.Magazine2;
import com.kh.brocoli.member.model.dao.UserDao;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.OrderAdd;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.trackOrders;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Entering_Question;
import com.kh.brocoli.product.model.vo.Product;


@Service("uService")
public class UserServiceimpl implements UserService {
	
	@Autowired
	private UserDao uDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		
		Member loginUser = uDao.loginMember(m);
		
		return loginUser;
	}

	@Override
	public String mailCheck2(String email) {
		String result = uDao.mailCheck2(email);
		System.out.println("result : " + result);
		if(result != null) {
			return result;
		}else {
			return null;
		}
	}

	@Override
	public int pwdFind(Member m) {
		int result = uDao.pwdFind(m);
		return result;
	}

	
	

	@Override
	public int newPassword(Member m) throws Exception {
		 return uDao.newPassword(m);
		
	}

	@Override
	public int idCheck(String id) {
		return uDao.idCheck(id);
	}

	@Override
	public int insertMember(Member m) {
		int result = uDao.insertMember(m);
		
		return result;
	}

	@Override
	public int mailCheck(String email) {
		return uDao.mailCheck(email);
	}

	@Override
	public int sEnter(Entering_Question b) {
		int result = uDao.sEnter(b);
		return result;
	}

	@Override
	public int bNameCheck(String name) {
		
		return uDao.bNameCheck(name);
	}

	@Override
	public int getListCount3() {
		return uDao.getListCount3();
	}

	@Override
	public ArrayList<Magazine2> selectmList() {
		return uDao.selectmList();
	}

	@Override
	public Magazine2 selectMagazine(int m_NO) {
		
		int result = uDao.updateCount(m_NO);
		
		return uDao.selectMagazine(m_NO);
	}


	@Override
	public int selectM1() {
		return uDao.selectM1();
	}

	@Override
	public int selectM2() {
		return uDao.selectM2();
	}

	@Override
	public int selectM3() {
		return uDao.selectM3();
	}

	@Override
	public int selectM4() {
		return uDao.selectM4();
	}

	@Override
	public int selectM5() {
		return uDao.selectM5();
	}

	@Override
	public int selectM6() {
		return uDao.selectM6();
	}

	@Override
	public int selectM7() {
		return uDao.selectM7();
	}

	@Override
	public int selectM8() {
		return uDao.selectM8();
	}

	@Override
	public int selectM9() {
		return uDao.selectM9();
	}

	@Override
	public int selectM10() {
		return uDao.selectM10();
	}

	@Override
	public int selectM11() {
		return uDao.selectM11();
	}

	@Override
	public int selectM12() {
		return uDao.selectM12();
	}

	@Override
	public ArrayList<Magazine2> selectm1List() {
		return uDao. selectm1List();
	}

	@Override
	public ArrayList<Magazine2> selectm2List() {
		return uDao.selectm2List() ;
	}

	@Override
	public ArrayList<Magazine2> selectm3List() {
		return uDao.selectm3List();
	}

	@Override
	public ArrayList<Magazine2> selectm4List() {
		return uDao.selectm4List();
	}

	@Override
	public ArrayList<Magazine2> selectm5List() {
		return uDao. selectm5List();
	}

	@Override
	public ArrayList<Magazine2> selectm6List() {
		return uDao.selectm6List();
	}

	@Override
	public ArrayList<Magazine2> selectm7List() {
		return uDao.selectm7List();
	}

	@Override
	public ArrayList<Magazine2> selectm8List() {
		return uDao.selectm8List();
	}

	@Override
	public ArrayList<Magazine2> selectm9List() {
		return uDao.selectm9List();
	}

	@Override
	public ArrayList<Magazine2> selectm10List() {
		return uDao.selectm10List();
	}

	@Override
	public ArrayList<Magazine2> selectm11List() {
		return uDao.selectm11List();
	}

	@Override
	public ArrayList<Magazine2> selectm12List() {
		return uDao.selectm12List();
	}

	@Override
	public ArrayList<Product> selectpList(int mno) {
		return uDao.selectpList(mno);
	}

	@Override
	public ArrayList<Brand> searchBrand(String keyword) {
		return uDao.searchBrand(keyword);
	}

	@Override
	public ArrayList<Product> searchProduct(String keyword) {
		return uDao.searchProduct(keyword);
	}

	@Override
	public ArrayList<Brand> searchBrand2(String keyword, String keyword2) {
		return uDao.searchBrand2(keyword,keyword2);
	}

	@Override
	public ArrayList<Product> searchProduct2(String keyword, String keyword2) {
		return uDao.searchProduct2(keyword,keyword2);
	}

	@Override
	public ArrayList<trackOrders> recentCheck(int mno) {
		return uDao.recentCheck(mno);
	}

	@Override
	public ArrayList<OrderAdd> cartCheck(int mno) {
		return uDao.cartCheck(mno);
	}

	@Override
	public int deleteOrder(int ct_NO) {
		return uDao.deleteOrder(ct_NO);
	}

	@Override
	public int updatePay(int mno, int total, Orders order) {
		// 총 주문횟수 
		int result2 = uDao.pupdateMemberCount(mno);
		 // 적립금
		int result = uDao.pupdateMember(total,mno);
		// 총 주문금액
		int result3 = uDao.pupdateMemberPrice(total,mno);
		System.out.println("주문금액까진 들어갔다.");
		// Order Insert
		int result4 = uDao.insertOrder(order);
		
		return uDao.deleteOa(mno);
	}

	
}
