package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import com.kh.brocoli.general.model.vo.Contact;
import com.kh.brocoli.member.model.vo.Member;

public interface ownerContactService {

	ArrayList<Contact> contactListSelect(Contact ct);

	ArrayList<Member> contactUserSelect(Member m);

	int contactViewCheckUpdate(int con_NO);
	
	int contactInsert(Contact ct);

	int contactInsertImg(Contact ct);



}
