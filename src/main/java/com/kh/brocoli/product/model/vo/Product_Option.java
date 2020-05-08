package com.kh.brocoli.product.model.vo;

import java.sql.Date;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public class Product_Option {
	
	private int op_NO;
	private String option_1;
	private String option_2;
	private String op_Stock;
	private Date op_Rec_Date;
	private String op_Status_YN;
	private int op_P_NO;
	
	private Product pList;
	
	private List<Product_Option> Product_OptionVOList;

	
	public Product_Option() {
		super();
	}

	public Product_Option(int op_NO, String option_1, String option_2, String op_Stock, Date op_Rec_Date,
			String op_Status_YN, int op_P_NO) {
		super();
		this.op_NO = op_NO;
		this.option_1 = option_1;
		this.option_2 = option_2;
		this.op_Stock = op_Stock;
		this.op_Rec_Date = op_Rec_Date;
		this.op_Status_YN = op_Status_YN;
		this.op_P_NO = op_P_NO;
	}

	public Product_Option(int op_NO, String option_1, String option_2, String op_Stock, Date op_Rec_Date,
			String op_Status_YN, int op_P_NO, Product pList, List<Product_Option> product_OptionVOList) {
		super();
		this.op_NO = op_NO;
		this.option_1 = option_1;
		this.option_2 = option_2;
		this.op_Stock = op_Stock;
		this.op_Rec_Date = op_Rec_Date;
		this.op_Status_YN = op_Status_YN;
		this.op_P_NO = op_P_NO;
		this.pList = pList;
		Product_OptionVOList = product_OptionVOList;
	}
	

	public int getOp_NO() {
		return op_NO;
	}

	public void setOp_NO(int op_NO) {
		this.op_NO = op_NO;
	}

	public String getOption_1() {
		return option_1;
	}

	public void setOption_1(String option_1) {
		this.option_1 = option_1;
	}

	public String getOption_2() {
		return option_2;
	}

	public void setOption_2(String option_2) {
		this.option_2 = option_2;
	}

	public String getOp_Stock() {
		return op_Stock;
	}

	public void setOp_Stock(String op_Stock) {
		this.op_Stock = op_Stock;
	}

	public Date getOp_Rec_Date() {
		return op_Rec_Date;
	}

	public void setOp_Rec_Date(Date op_Rec_Date) {
		this.op_Rec_Date = op_Rec_Date;
	}

	public String getOp_Status_YN() {
		return op_Status_YN;
	}

	public void setOp_Status_YN(String op_Status_YN) {
		this.op_Status_YN = op_Status_YN;
	}

	public int getOp_P_NO() {
		return op_P_NO;
	}

	public void setOp_P_NO(int op_P_NO) {
		this.op_P_NO = op_P_NO;
	}

	public Product getpList() {
		return pList;
	}

	public void setpList(Product pList) {
		this.pList = pList;
	}

	public List<Product_Option> getProduct_OptionVOList() {
		return Product_OptionVOList;
	}

	public void setProduct_OptionVOList(List<Product_Option> product_OptionVOList) {
		Product_OptionVOList = product_OptionVOList;
	}

	@Override
	public String toString() {
		return "Product_Option [op_NO=" + op_NO + ", option_1=" + option_1 + ", option_2=" + option_2 + ", op_Stock="
				+ op_Stock + ", op_Rec_Date=" + op_Rec_Date + ", op_Status_YN=" + op_Status_YN + ", op_P_NO=" + op_P_NO
				+ ", pList=" + pList + ", Product_OptionVOList=" + Product_OptionVOList + "]";
	}
	
	
	
	
}
