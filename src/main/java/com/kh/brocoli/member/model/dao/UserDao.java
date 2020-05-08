package com.kh.brocoli.member.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.magazine.model.vo.Magazine2;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.OrderAdd;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.trackOrders;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Entering_Question;
import com.kh.brocoli.product.model.vo.Product;


@Repository("uDao")
public class UserDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public Member loginMember(Member m) {
		return (Member)sqlSession.selectOne("memberMapper.loginMember",m);
	}

	public int idCheck(String id) {
		
		return sqlSession.selectOne("memberMapper.idCheck",id);
	}

	public int insertMember(Member m) {
		
		return sqlSession.insert("memberMapper.insertMember",m);
	}

	public int mailCheck(String email) {
		return sqlSession.selectOne("memberMapper.mailCheck",email);
	}

	public String mailCheck2(String email) {
		return sqlSession.selectOne("memberMapper.mailCheck2",email);
	}


	public int pwdFind(Member m) {
		return sqlSession.selectOne("memberMapper.pwdFind",m);
	}
	
		public int newPassword(Member m) {
				
			
			return sqlSession.update("memberMapper.newPassword", m);
			
		}

		public int sEnter(Entering_Question b) {
			return sqlSession.insert("memberMapper.sEnter",b);
		}

		public int bNameCheck(String name) {
			
			return sqlSession.selectOne("memberMapper.bNameCheck",name);
		}

		public int getListCount3() {
			return sqlSession.selectOne("memberMapper.getListCount3");
		}

		public ArrayList<Magazine2> selectmList() {
		
			return (ArrayList)sqlSession.selectList("memberMapper.selectmList");
		}

		public Magazine2 selectMagazine(int m_NO) {
			return sqlSession.selectOne("memberMapper.selectMagazine",m_NO);
		}

		public int updateCount(int m_NO) {
			return sqlSession.update("memberMapper.updateCount",m_NO);
		}

		
		public int selectM1() {
			return sqlSession.selectOne("memberMapper.selectM1");
		}

		public int selectM2() {
			return sqlSession.selectOne("memberMapper.selectM2");
		}

		public int selectM3() {
			return sqlSession.selectOne("memberMapper.selectM3");
		}

		public int selectM4() {
			return sqlSession.selectOne("memberMapper.selectM4");
		}

		public int selectM5() {
			return sqlSession.selectOne("memberMapper.selectM5");
		}

		public int selectM6() {
			return sqlSession.selectOne("memberMapper.selectM6");
		}

		public int selectM7() {
			return sqlSession.selectOne("memberMapper.selectM7");
		}

		public int selectM8() {
			return sqlSession.selectOne("memberMapper.selectM8");
		}

		public int selectM9() {
			return sqlSession.selectOne("memberMapper.selectM9");
		}

		public int selectM10() {
			return sqlSession.selectOne("memberMapper.selectM10");
		}

		public int selectM11() {
			return sqlSession.selectOne("memberMapper.selectM11");
		}

		public int selectM12() {
			return sqlSession.selectOne("memberMapper.selectM12");
		}

		public ArrayList<Magazine2> selectm1List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm1List");
		}

		public ArrayList<Magazine2> selectm2List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm2List");
		}

		public ArrayList<Magazine2> selectm3List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm3List");
		}

		public ArrayList<Magazine2> selectm4List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm4List");
		}

		public ArrayList<Magazine2> selectm5List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm5List");
		}

		public ArrayList<Magazine2> selectm6List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm6List");
		}

		public ArrayList<Magazine2> selectm7List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm7List");
		}

		public ArrayList<Magazine2> selectm8List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm8List");
		}

		public ArrayList<Magazine2> selectm9List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm9List");
		}

		public ArrayList<Magazine2> selectm10List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm10List");
		}

		public ArrayList<Magazine2> selectm11List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm11List");
		}

		public ArrayList<Magazine2> selectm12List() {
			return (ArrayList)sqlSession.selectList("memberMapper.selectm12List");
		}

		public ArrayList<Product> selectpList(int mno) {
			return (ArrayList)sqlSession.selectList("memberMapper.pDetail",mno);
		}

		public ArrayList<Brand> searchBrand(String keyword) {
			return (ArrayList)sqlSession.selectList("memberMapper.searchBrand",keyword);
		}

		public ArrayList<Product> searchProduct(String keyword) {
			return (ArrayList)sqlSession.selectList("memberMapper.searchProduct",keyword);
		}

		public ArrayList<Brand> searchBrand2( String keyword, String keyword2) {
			
			HashMap<String,String> KeyCode = new HashMap();
			KeyCode.put("keyword",keyword);
			KeyCode.put("keyword2",keyword2);
				
			return (ArrayList)sqlSession.selectList("memberMapper.searchBrand2",KeyCode);
		}

		public ArrayList<Product> searchProduct2(String keyword, String keyword2) {
			HashMap<String,String> KeyCode = new HashMap();
			KeyCode.put("keyword",keyword);
			KeyCode.put("keyword2",keyword2);
			return (ArrayList)sqlSession.selectList("memberMapper.searchProduct2",KeyCode);
		}

		public ArrayList<trackOrders> recentCheck(int mno) {
			return (ArrayList)sqlSession.selectList("memberMapper.recentCheck",mno);
		}

		public ArrayList<OrderAdd> cartCheck(int mno) {
			return (ArrayList)sqlSession.selectList("memberMapper.cartCheck",mno);
		}

		public int deleteOrder(int ct_NO) {
			return sqlSession.delete("memberMapper.deleteOrder",ct_NO);
		}

		public int deleteOa(int mno) {
			return sqlSession.delete("memberMapper.deleteOa",mno);
		}

		public int pupdateMember(int total, int mno) {
			int total2 = (int) (total * 0.01);
			System.out.println("DAO MNO   "+ mno);
			System.out.println("DAO total    "+ total);
			System.out.println("DAO total2   "+total2);
			HashMap<String,Integer> KeyCode = new HashMap();
			KeyCode.put("total2",total2);
			KeyCode.put("mno",mno);
			
			
			return sqlSession.update("memberMapper.pupdateMember",KeyCode);
		}

		public int pupdateMemberCount(int mno) {

			return sqlSession.update("memberMapper.pupdateMemberCount",mno);
		}

		public int pupdateMemberPrice(int total, int mno) {
			HashMap<String,Integer> KeyCode = new HashMap();
			KeyCode.put("mno",mno);
			KeyCode.put("total",total);
			
			return sqlSession.update("memberMapper.pupdateMemberPrice",KeyCode);
		}

		public int insertOrder(Orders order) {
			return sqlSession.insert("memberMapper.insertOrder",order);
		}


}


