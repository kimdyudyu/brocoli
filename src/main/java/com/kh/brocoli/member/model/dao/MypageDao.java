package com.kh.brocoli.member.model.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.board.model.vo.PageInfo;
import com.kh.brocoli.board.model.vo.QnA;
import com.kh.brocoli.board.model.vo.SearchCondition;
import com.kh.brocoli.member.model.vo.Change;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.member.model.vo.Reject;
import com.kh.brocoli.product.model.vo.Review;

@Repository("myDao")
public class MypageDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int deleteMember(Member m) {
		return sqlSession.delete("mypageMapper.deleteMember",m);
	}

	public int updateMember(Member m) {
		return sqlSession.update("mypageMapper.updateMember",m);
	}
	
	public int pwdCheck(String password) {
		return sqlSession.selectOne("mypageMapper.pwdCheck",password);
	}

	public int getSearchResultListCount(SearchCondition sc) {
		return sqlSession.selectOne("QnA-mapper.getSearchResultListCount", sc);
	}

	public ArrayList<QnA> selectSearchResultList(HttpSession session,SearchCondition sc, PageInfo pi) {
        ArrayList<QnA> list = null;
		
		int offset = (pi.getCurrentPage() -1) * pi.getLimit();
		
		RowBounds rowBounds = new RowBounds(offset, pi.getLimit());
		
		list = (ArrayList)sqlSession.selectList("QnA-mapper.selectSearchResultList",sc,rowBounds);
		
		return list;
	}

	public ArrayList<Orders> myorderList(Member m) {
		 return (ArrayList)sqlSession.selectList("mypageMapper.myorderList",m);
		
		
	}

	public ArrayList<Orders> P_change(String or_No) {
		return (ArrayList)sqlSession.selectList("mypageMapper.P_change",or_No);
	}

	public ArrayList<Orders> P_reject(String or_No) {
		return (ArrayList)sqlSession.selectList("mypageMapper.P_reject",or_No);
	}

	public int C_complete(Change ch) {
		return sqlSession.insert("mypageMapper.C_complete",ch);
	}

	public int R_complete(Reject re) {
		return sqlSession.insert("mypageMapper.R_complete",re);
	}

	public ArrayList<Orders> trackprocess(String or_No) {
		return (ArrayList)sqlSession.selectList("mypageMapper.trackprocess",or_No);
	}

	public ArrayList<Orders> selectDetail(Orders od) {
		return (ArrayList)sqlSession.selectList("mypageMapper.selectDetail",od);
	}

	public ArrayList<Orders> searchDetail(HashMap<String, Date> hmap) {
		return (ArrayList)sqlSession.selectList("mypageMapper.searchDetail",hmap);
	}


	



	



}
