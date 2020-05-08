package com.kh.brocoli.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;

@Repository("ADao")
public class AdminDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * 작성자:신은지
	 * 1-1. 회원수
	 * @return
	 */
	public int memberCount() {
		return sqlSession.selectOne("Admin.memberCount");
	}
	
	/**
	 * 작성자:신은지
	 * 1-2. 브랜드수
	 * @return
	 */
	public int brandCount() {
		return sqlSession.selectOne("Admin.brandCount");
	}

	/**
	 * 작성자:신은지
	 * 1-3. 주문수
	 * @return
	 */
	public int orderCount() {
		return sqlSession.selectOne("Admin.orderCount");
	}

	/**
	 * 작성자:신은지
	 * 1-4. 총매출
	 * @return
	 */
	public String sales() {
		return sqlSession.selectOne("Admin.sales");
	}

	/**
	 *  작성자 : 신으닞
	 *  1-5.최근 등록 브랜드 5개 
	 * @return
	 */
	public ArrayList<Brand> BrandList() {
		return (ArrayList) sqlSession.selectList("Admin.brandList");
	}

	/**
	 * 작성자 : 신은지
	 *  1-6.chart 여성
	 * @return
	 */
	public int memberWCount() {
		return sqlSession.selectOne("Admin.memberWCount");
	}
	
	/**
	 * 작성자 : 신은지
	 *  1-7.chart 남성
	 * @return
	 */
	public int memberMCount() {
		return sqlSession.selectOne("Admin.memberMCount");
	}

}
