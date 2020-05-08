package com.kh.brocoli.member.model.vo;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_File;

public class OrderAdd {

	private int oa_NO;
	private String oa_Option_1;
	private String oa_Option_2;
	private String oa_Amount;
	private int oa_Mno;
	private int oa_P_NO;
	
	private Product productList;
	private Product_File p_File;
	public OrderAdd() {
		super();
	}
	public OrderAdd(int oa_NO, String oa_Option_1, String oa_Option_2, String oa_Amount, int oa_Mno, int oa_P_NO,
			Product productList, Product_File p_File) {
		super();
		this.oa_NO = oa_NO;
		this.oa_Option_1 = oa_Option_1;
		this.oa_Option_2 = oa_Option_2;
		this.oa_Amount = oa_Amount;
		this.oa_Mno = oa_Mno;
		this.oa_P_NO = oa_P_NO;
		this.productList = productList;
		this.p_File = p_File;
	}
	public int getOa_NO() {
		return oa_NO;
	}
	public void setOa_NO(int oa_NO) {
		this.oa_NO = oa_NO;
	}
	public String getOa_Option_1() {
		return oa_Option_1;
	}
	public void setOa_Option_1(String oa_Option_1) {
		this.oa_Option_1 = oa_Option_1;
	}
	public String getOa_Option_2() {
		return oa_Option_2;
	}
	public void setOa_Option_2(String oa_Option_2) {
		this.oa_Option_2 = oa_Option_2;
	}
	public String getOa_Amount() {
		return oa_Amount;
	}
	public void setOa_Amount(String oa_Amount) {
		this.oa_Amount = oa_Amount;
	}
	public int getOa_Mno() {
		return oa_Mno;
	}
	public void setOa_Mno(int oa_Mno) {
		this.oa_Mno = oa_Mno;
	}
	public int getOa_P_NO() {
		return oa_P_NO;
	}
	public void setOa_P_NO(int oa_P_NO) {
		this.oa_P_NO = oa_P_NO;
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
		return "OrderAdd [oa_NO=" + oa_NO + ", oa_Option_1=" + oa_Option_1 + ", oa_Option_2=" + oa_Option_2
				+ ", oa_Amount=" + oa_Amount + ", oa_Mno=" + oa_Mno + ", oa_P_NO=" + oa_P_NO + ", productList="
				+ productList + ", p_File=" + p_File + "]";
	}
	
	
	
	
}
