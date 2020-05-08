package com.kh.brocoli.member.model.service;

import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Wish;

public interface WishService {

	public int wInsert(Wish w);

	public ArrayList<Wish> wishList(int w_Mno);

	public int deleteWish(int w_No);

}
