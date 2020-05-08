package com.kh.brocoli.owner.model.service;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.kh.brocoli.owner.model.dao.ownerProductDao;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;
import com.kh.brocoli.product.model.vo.Product_Option;


@Service("oProductService")
public class ownerProductServiceimpl implements ownerProductService {

	@Autowired ownerProductDao oDao;
	
	/**
	 *작성자 : 박주완
	 *작성일 : 2020-04-03
	 *내용 : 파일 등록시 product,product_file 2가지 테이블에 insert 하기위한 메소드
	 */

	@Override
	public int productInsert(Product p, Product_File pf,Product_Option po) {
		//2개의 DAO 반환값중 1가지만 '0'이 반환되어도 실패!
		int productSet =  oDao.insertProduct(p);
		int result = 0;
		
		int PNO = p.getP_NO();
		
		pf.setPf_P_NO(PNO); //product  insert 후 생성된 P_NO값을 PF의 외래키로 set시켜준다.
		if(productSet > 0) {
			int productImgSet = oDao.insertProductImg(pf);
			int productOptionSet = oDao.insertProductOption(po,PNO);
			result =  productSet * productImgSet * productOptionSet;
		}
		return result;
	}

	@Override
	public ArrayList<Product> productList(String Brand_NO) {
		return oDao.listProduct(Brand_NO);
	}

	@Override
	public ArrayList<Product_Option> stockDetail(int pNO) {
		return oDao.stockDetail(pNO);
	}

	@Override
	public int stockChange(Product_Option po) {
		return oDao.stockChange(po);
	}

	@Override
	public ArrayList<Product_Option> stockList(String bNO) {
		return oDao.stockList(bNO);
	}



}
