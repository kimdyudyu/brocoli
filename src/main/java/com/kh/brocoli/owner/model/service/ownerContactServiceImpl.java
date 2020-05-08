package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.general.model.vo.Contact;
import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.owner.model.dao.ownerContactDao;

@Service("ownerContactService")
public class ownerContactServiceImpl implements ownerContactService{

	@Autowired ownerContactDao oDao;

	@Override
	public ArrayList<Contact> contactListSelect(Contact ct) {
		return oDao.selectContactList(ct);
	}

	@Override
	public ArrayList<Member> contactUserSelect(Member m) {
		return oDao.selectContactUser(m);
	}

	@Override
	public int contactViewCheckUpdate(int con_NO) {
		return oDao.updateContactViewCheck(con_NO);
	}

	@Override
	public int contactInsert(Contact ct) {
		return oDao.insertContact(ct);
	}
	
	@Override
	public int contactInsertImg(Contact ct) {
		return oDao.insertContactImg(ct);
	}

	
	
	
	
	
	
}
