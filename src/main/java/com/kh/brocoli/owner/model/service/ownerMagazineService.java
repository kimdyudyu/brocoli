package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import com.kh.brocoli.magazine.model.vo.Magazine;
import com.kh.brocoli.magazine.model.vo.Magazine_File;

public interface ownerMagazineService {

	int magazineInsert(Magazine m, Magazine_File mf);

	ArrayList<Magazine> selectResultMagazine(int bNO);

	ArrayList<Magazine> selectOldMagazine(int bNO);
	
	
	
	
	
	
	
	
	
	
}
