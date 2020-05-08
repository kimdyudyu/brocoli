package com.kh.brocoli.owner.model.service;


import java.util.ArrayList;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;
import com.kh.brocoli.product.model.vo.Product_Option;

public interface ownerProductService {

	int productInsert(Product p, Product_File pf,Product_Option po);

	ArrayList<Product> productList(String Brand_NO);

	ArrayList<Product_Option> stockDetail(int pNO);

	int stockChange(Product_Option po);

	ArrayList<Product_Option> stockList(String bNO);





}
