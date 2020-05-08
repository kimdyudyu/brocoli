package com.kh.brocoli.member.model.vo;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;

public class Wish {

	private int w_No;
	private int w_Mno; // 위시 번호
	private int w_P_NO; // 상품번호
	
	private Product productList;
	private Product_File p_File;

	public Wish() {
		super();
	}

	public Wish(int w_No, int w_Mno, int w_P_NO, Product productList, Product_File p_File) {
		super();
		this.w_No = w_No;
		this.w_Mno = w_Mno;
		this.w_P_NO = w_P_NO;
		this.productList = productList;
		this.p_File = p_File;
	}

	public int getW_No() {
		return w_No;
	}

	public void setW_No(int w_No) {
		this.w_No = w_No;
	}

	public int getW_Mno() {
		return w_Mno;
	}

	public void setW_Mno(int w_Mno) {
		this.w_Mno = w_Mno;
	}

	public int getW_P_NO() {
		return w_P_NO;
	}

	public void setW_P_NO(int w_P_NO) {
		this.w_P_NO = w_P_NO;
	}

	public Product getProductList() {
		return productList;
	}

	public void setProductList(Product productList) {
		this.productList = productList;
	}

	public Product_File getP_File() {
		return p_File;
	}

	public void setP_File(Product_File p_File) {
		this.p_File = p_File;
	}

	@Override
	public String toString() {
		return "Wish [w_No=" + w_No + ", w_Mno=" + w_Mno + ", w_P_NO=" + w_P_NO + ", productList=" + productList + "]";
	}

}