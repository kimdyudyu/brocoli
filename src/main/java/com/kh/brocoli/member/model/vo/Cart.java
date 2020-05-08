package com.kh.brocoli.member.model.vo;

import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.ProductDetail;
import com.kh.brocoli.product.model.vo.Product_File;
import com.kh.brocoli.product.model.vo.Product_Option;

public class Cart {
	private String ct_Option_1;
	private String ct_Option_2;
	private int ct_Amount;
	private int ct_Mno;
	private int ct_P_NO;
	private int ct_NO;
	
	private Product productList;
	private Product_File p_File;
	private ProductDetail Pd;
	private Product_Option poList;
	
	public Cart() {
		super();
	}

	public Cart(String ct_Option_1, String ct_Option_2, int ct_Amount, int ct_Mno, int ct_P_NO, int ct_NO,
			Product productList, Product_File p_File, ProductDetail pd, Product_Option poList) {
		super();
		this.ct_Option_1 = ct_Option_1;
		this.ct_Option_2 = ct_Option_2;
		this.ct_Amount = ct_Amount;
		this.ct_Mno = ct_Mno;
		this.ct_P_NO = ct_P_NO;
		this.ct_NO = ct_NO;
		this.productList = productList;
		this.p_File = p_File;
		this.Pd = pd;
		this.poList = poList;
	}

	public String getCt_Option_1() {
		return ct_Option_1;
	}

	public void setCt_Option_1(String ct_Option_1) {
		this.ct_Option_1 = ct_Option_1;
	}

	public String getCt_Option_2() {
		return ct_Option_2;
	}

	public void setCt_Option_2(String ct_Option_2) {
		this.ct_Option_2 = ct_Option_2;
	}

	public int getCt_Amount() {
		return ct_Amount;
	}

	public void setCt_Amount(int ct_Amount) {
		this.ct_Amount = ct_Amount;
	}

	public int getCt_Mno() {
		return ct_Mno;
	}

	public void setCt_Mno(int ct_Mno) {
		this.ct_Mno = ct_Mno;
	}

	public int getCt_P_NO() {
		return ct_P_NO;
	}

	public void setCt_P_NO(int ct_P_NO) {
		this.ct_P_NO = ct_P_NO;
	}

	public int getCt_NO() {
		return ct_NO;
	}

	public void setCt_NO(int ct_NO) {
		this.ct_NO = ct_NO;
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

	public ProductDetail getPd() {
		return Pd;
	}

	public void setPd(ProductDetail pd) {
		this.Pd = pd;
	}

	public Product_Option getPoList() {
		return poList;
	}

	public void setPoList(Product_Option poList) {
		this.poList = poList;
	}
	
	
	
}