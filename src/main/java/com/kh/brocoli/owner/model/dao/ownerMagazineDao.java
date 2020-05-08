package com.kh.brocoli.owner.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.brocoli.magazine.model.vo.Magazine;
import com.kh.brocoli.magazine.model.vo.Magazine_File;

@Repository("ownerMagazineDao")
public class ownerMagazineDao {

	@Autowired SqlSessionTemplate sqlSession;
	
	public int insertMagazine(Magazine m) {
		return sqlSession.insert("ownerMagazine-mapper.insertMagazine",m);
	}

	public int insertMagazineFile(Magazine_File mf) {
		return sqlSession.insert("ownerMagazine-mapper.insertMagazineFile",mf);
	}

	public ArrayList<Magazine> selectResultMagazine(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerMagazine-mapper.selectResultMagazine",bNO);
	}

	public ArrayList<Magazine> selectOldMagazine(int bNO) {
		return (ArrayList)sqlSession.selectList("ownerMagazine-mapper.selectOldMagazine",bNO);
	}

	
	
	
	
	
}
