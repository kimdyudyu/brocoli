package com.kh.brocoli.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.dao.WishDao;
import com.kh.brocoli.member.model.vo.Wish;

@Service("wService")
public class WishServiceimpl implements WishService{
	
	@Autowired
	private WishDao wDao;

	@Override
	public int wInsert(Wish w) {
		return wDao.wInsert(w);
	}

	@Override
	public ArrayList<Wish> wishList(int w_Mno) {
		return wDao.wishList(w_Mno);
	}

	@Override
	public int deleteWish(int w_No) {
		return wDao.deleteWish(w_No);
	}

}
