package com.kh.brocoli.owner.model.service;

import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.owner.vo.ownerAge;
import com.kh.brocoli.owner.vo.ownerCategore;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;

public interface ownerBasicService {

	int selectMassegeCount(int bNO);

	int selectReviewCount(int bNO);

	int selectOrderCount(int bNO);

	int selectQnACount(int bNO);

	String selectBrandLogo(int bNO);

	Brand selectBrandInfo(int bNO);

	int selectTotalPrice(int bNO);

	int selectResultPrice(int bNO);

	int selectCountOrder(int bNO);

	int selectCountReject(int bNO);

	int selectCountChange(int bNO);

	ArrayList<Product> ownerResultProduct(int bNO);


}
