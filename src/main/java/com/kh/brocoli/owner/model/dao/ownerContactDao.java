package com.kh.brocoli.owner.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.general.model.vo.Contact;
import com.kh.brocoli.member.model.vo.Member;

@Repository("ownerContactDao")
public class ownerContactDao {
	
	@Autowired SqlSessionTemplate sqlSession;

	public ArrayList<Contact> selectContactList(Contact ct) {
		return (ArrayList)sqlSession.selectList("ownerContact-mapper.selectContactList",ct);
	}

	public ArrayList<Member> selectContactUser(Member m) {
		return (ArrayList)sqlSession.selectList("ownerContact-mapper.selectContactUser",m);
	}

	public int updateContactViewCheck(int con_NO) {
		return sqlSession.update("ownerContact-mapper.updateContactViewCheck",con_NO);
	}

	public int insertContact(Contact ct) {
		return sqlSession.insert("ownerContact-mapper.insertContact",ct);
	}

	public int insertContactImg(Contact ct) {
		return sqlSession.insert("ownerContact-mapper.insertContactImg",ct);
	}
	
	
	
	
	
	
	
	
	
}
