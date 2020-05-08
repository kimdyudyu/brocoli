package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.model.dao.ownerBasicDao;
import com.kh.brocoli.owner.vo.ownerAge;
import com.kh.brocoli.owner.vo.ownerCategore;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;

@Service("ownerBasicService")
public class ownerBasicServiceImpl implements ownerBasicService {

	@Autowired ownerBasicDao oDao;
	
	@Override
	public int selectMassegeCount(int bNO) {
		return oDao.selectMassegeCount(bNO);
	}

	@Override
	public int selectReviewCount(int bNO) {
		return oDao.selectReviewCount(bNO);
	}

	@Override
	public int selectOrderCount(int bNO) {
		return oDao.selectOrderCount(bNO);
	}

	@Override
	public int selectQnACount(int bNO) {
		return oDao.selectQnACount(bNO);
	}

	@Override
	public String selectBrandLogo(int bNO) {
		return oDao.selectBrandLogo(bNO);
	}

	@Override
	public Brand selectBrandInfo(int bNO) {
		return oDao.selectBrandInfo(bNO);
	}

	@Override
	public int selectTotalPrice(int bNO) {
		return oDao.selectTotalPrice(bNO);
	}

	@Override
	public int selectResultPrice(int bNO) {
		return oDao.selectResultPrice(bNO);
	}

	@Override
	public int selectCountOrder(int bNO) {
		return oDao.selectCountOrder(bNO);
	}

	@Override
	public int selectCountReject(int bNO) {
		return oDao.selectCountReject(bNO);
	}

	@Override
	public int selectCountChange(int bNO) {
		return oDao.selectCountChange(bNO);
	}

	@Override
	public ArrayList<Product> ownerResultProduct(int bNO) {
		return oDao.ownerResultProduct(bNO);
	}

	
	
}
