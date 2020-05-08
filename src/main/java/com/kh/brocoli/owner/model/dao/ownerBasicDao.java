package com.kh.brocoli.owner.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.vo.ownerAge;
import com.kh.brocoli.owner.vo.ownerCategore;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;

@Repository("ownerBasicDao")
public class ownerBasicDao {

	@Autowired SqlSessionTemplate sqlSession;

	public int selectMassegeCount(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectMassegeCount",bNO);
	}

	public int selectReviewCount(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectReviewCount",bNO);
	}

	public int selectOrderCount(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectOrderCount",bNO);
	}

	public int selectQnACount(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectQnACount",bNO);
	}

	public String selectBrandLogo(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectBrandLogo",bNO);
	}

	public Brand selectBrandInfo(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectBrandInfo",bNO);
	}

	public int selectTotalPrice(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectTotalPrice",bNO);
	}

	public int selectResultPrice(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectResultPrice",bNO);
	}

	public int selectCountOrder(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectCountOrder",bNO);
	}

	public int selectCountReject(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectCountReject",bNO);
	}

	public int selectCountChange(int bNO) {
		return sqlSession.selectOne("ownerBasic-mapper.selectCountChange",bNO);
	}

	public ArrayList<Product> ownerResultProduct(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerBasic-mapper.ownerResultProduct",bNO);
	}


}
