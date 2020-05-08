package com.kh.brocoli.product.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class Product {
   
   private int p_NO;
   private String p_Name;
   private String p_Price;
   private String p_Sail_Price;
   private String p_Last_Price;
   private String p_Bcategory;
   private String p_Scategory;
   private String p_Comment;
   private String p_Order_Count;
   private String p_Status;
   private String p_Writer;
   private Date p_Insert_Date;
   private String p_Modify_Id;
   private Date p_Modify_Date;
   private String p_Show_YN;
   private int p_Brand_NO;
   private int or_NO;
   private Date or_Date;
   private int or_P_NO;
   
   private Product_File pfList;
   
   private Product_Option poList;
   
   private Brand brList;
   
   private ArrayList<Product_Option> poAList;
   
   public Product() {
      super();
   }

	public Product(int p_NO, String p_Name, String p_Price, String p_Sail_Price, String p_Last_Price, String p_Bcategory,
			String p_Scategory, String p_Comment, String p_Order_Count, String p_Status, String p_Writer,
			Date p_Insert_Date, String p_Modify_Id, Date p_Modify_Date, String p_Show_YN, int p_Brand_NO, int or_NO,
			Date or_Date, int or_P_NO, Product_File pfList, Product_Option poList, Brand brList,
			ArrayList<Product_Option> poAList) {
		super();
		this.p_NO = p_NO;
		this.p_Name = p_Name;
		this.p_Price = p_Price;
		this.p_Sail_Price = p_Sail_Price;
		this.p_Last_Price = p_Last_Price;
		this.p_Bcategory = p_Bcategory;
		this.p_Scategory = p_Scategory;
		this.p_Comment = p_Comment;
		this.p_Order_Count = p_Order_Count;
		this.p_Status = p_Status;
		this.p_Writer = p_Writer;
		this.p_Insert_Date = p_Insert_Date;
		this.p_Modify_Id = p_Modify_Id;
		this.p_Modify_Date = p_Modify_Date;
		this.p_Show_YN = p_Show_YN;
		this.p_Brand_NO = p_Brand_NO;
		this.or_NO = or_NO;
		this.or_Date = or_Date;
		this.or_P_NO = or_P_NO;
		this.pfList = pfList;
		this.poList = poList;
		this.brList = brList;
		this.poAList = poAList;
	}

	public int getP_NO() {
		return p_NO;
	}

	public void setP_NO(int p_NO) {
		this.p_NO = p_NO;
	}

	public String getP_Name() {
		return p_Name;
	}

	public void setP_Name(String p_Name) {
		this.p_Name = p_Name;
	}

	public String getP_Price() {
		return p_Price;
	}

	public void setP_Price(String p_Price) {
		this.p_Price = p_Price;
	}

	public String getP_Sail_Price() {
		return p_Sail_Price;
	}

	public void setP_Sail_Price(String p_Sail_Price) {
		this.p_Sail_Price = p_Sail_Price;
	}

	public String getP_Last_Price() {
		return p_Last_Price;
	}

	public void setP_Last_Price(String p_Last_Price) {
		this.p_Last_Price = p_Last_Price;
	}

	public String getP_Bcategory() {
		return p_Bcategory;
	}

	public void setP_Bcategory(String p_Bcategory) {
		this.p_Bcategory = p_Bcategory;
	}

	public String getP_Scategory() {
		return p_Scategory;
	}

	public void setP_Scategory(String p_Scategory) {
		this.p_Scategory = p_Scategory;
	}

	public String getP_Comment() {
		return p_Comment;
	}

	public void setP_Comment(String p_Comment) {
		this.p_Comment = p_Comment;
	}

	public String getP_Order_Count() {
		return p_Order_Count;
	}

	public void setP_Order_Count(String p_Order_Count) {
		this.p_Order_Count = p_Order_Count;
	}

	public String getP_Status() {
		return p_Status;
	}

	public void setP_Status(String p_Status) {
		this.p_Status = p_Status;
	}

	public String getP_Writer() {
		return p_Writer;
	}

	public void setP_Writer(String p_Writer) {
		this.p_Writer = p_Writer;
	}

	public Date getP_Insert_Date() {
		return p_Insert_Date;
	}

	public void setP_Insert_Date(Date p_Insert_Date) {
		this.p_Insert_Date = p_Insert_Date;
	}

	public String getP_Modify_Id() {
		return p_Modify_Id;
	}

	public void setP_Modify_Id(String p_Modify_Id) {
		this.p_Modify_Id = p_Modify_Id;
	}

	public Date getP_Modify_Date() {
		return p_Modify_Date;
	}

	public void setP_Modify_Date(Date p_Modify_Date) {
		this.p_Modify_Date = p_Modify_Date;
	}

	public String getP_Show_YN() {
		return p_Show_YN;
	}

	public void setP_Show_YN(String p_Show_YN) {
		this.p_Show_YN = p_Show_YN;
	}

	public int getP_Brand_NO() {
		return p_Brand_NO;
	}

	public void setP_Brand_NO(int p_Brand_NO) {
		this.p_Brand_NO = p_Brand_NO;
	}

	public int getOr_NO() {
		return or_NO;
	}

	public void setOr_NO(int or_NO) {
		this.or_NO = or_NO;
	}

	public Date getOr_Date() {
		return or_Date;
	}

	public void setOr_Date(Date or_Date) {
		this.or_Date = or_Date;
	}

	public int getOr_P_NO() {
		return or_P_NO;
	}

	public void setOr_P_NO(int or_P_NO) {
		this.or_P_NO = or_P_NO;
	}

	public Product_File getPfList() {
		return pfList;
	}

	public void setPfList(Product_File pfList) {
		this.pfList = pfList;
	}

	public Product_Option getPoList() {
		return poList;
	}

	public void setPoList(Product_Option poList) {
		this.poList = poList;
	}

	public Brand getBrList() {
		return brList;
	}

	public void setBrList(Brand brList) {
		this.brList = brList;
	}

	public ArrayList<Product_Option> getPoAList() {
		return poAList;
	}

	public void setPoAList(ArrayList<Product_Option> poAList) {
		this.poAList = poAList;
	}

	@Override
	public String toString() {
		return "Product [p_NO=" + p_NO + ", p_Name=" + p_Name + ", p_Price=" + p_Price + ", p_Sail_Price="
				+ p_Sail_Price + ", p_Last_Price=" + p_Last_Price + ", p_Bcategory=" + p_Bcategory + ", p_Scategory="
				+ p_Scategory + ", p_Comment=" + p_Comment + ", p_Order_Count=" + p_Order_Count + ", p_Status="
				+ p_Status + ", p_Writer=" + p_Writer + ", p_Insert_Date=" + p_Insert_Date + ", p_Modify_Id="
				+ p_Modify_Id + ", p_Modify_Date=" + p_Modify_Date + ", p_Show_YN=" + p_Show_YN + ", p_Brand_NO="
				+ p_Brand_NO + ", or_NO=" + or_NO + ", or_Date=" + or_Date + ", or_P_NO=" + or_P_NO + ", pfList="
				+ pfList + ", poList=" + poList + ", brList=" + brList + ", poAList=" + poAList + "]";
	}

	
	
	
}