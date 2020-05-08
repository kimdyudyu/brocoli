package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.magazine.model.vo.Magazine;
import com.kh.brocoli.magazine.model.vo.Magazine_File;
import com.kh.brocoli.owner.model.dao.ownerMagazineDao;

@Service("ownerMagazineService")
public class ownerMagazineServiceImpl implements ownerMagazineService{

	@Autowired ownerMagazineDao oDao;

	@Override
	public int magazineInsert(Magazine m, Magazine_File mf) {
		int mResult =  oDao.insertMagazine(m);
		int m_NO = m.getM_NO();
		mf.setMf_M_NO(m_NO);
		int result = 0;
		if(mResult > 0) {
			int mfResult = oDao.insertMagazineFile(mf);
			result = mResult * mfResult;
		}else {
			System.out.println("매거진 이미지등록 ServiceImpl 실패");
		}
		
		return result;
	}

	@Override
	public ArrayList<Magazine> selectResultMagazine(int bNO) {
		return oDao.selectResultMagazine(bNO);
	}

	@Override
	public ArrayList<Magazine> selectOldMagazine(int bNO) {
		return oDao.selectOldMagazine(bNO);
	}
	
	
	
	
	
	
	
	
	
	
}
