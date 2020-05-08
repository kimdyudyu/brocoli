package com.kh.brocoli.product.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class totalProduct {
   
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
   
   private int pf_NO;
	private String pf_Img1;
	private String pf_Img1_ReName;
	private String pf_Img2;
	private String pf_Img2_ReName;
	private String pf_Img3;
	private String pf_Img3_ReName;
	private String pf_Img4;
	private String pf_Img4_ReName;
	private String pf_Img5;
	private String pf_Img5_ReName;
	private String pf_Img6;
	private String pf_Img6_ReName;
	private String pf_Dimg1;
	private String pf_Dimg1_ReName;
	private String pf_Dimg2;
	private String pf_Dimg2_ReName;
	private String pf_Dimg3;
	private String pf_Dimg3_ReName;
	private int pf_P_NO;
   
	private int op_NO;
	private String option_1;
	private String option_2;
	private String op_Stock;
	private Date op_Rec_Date;
	private String op_Status_YN;
	private int op_P_NO;
   
	private int brand_NO;
	private String b_Name;
	private String b_Logo;
	private String b_Logo_ReName;
	private String b_Business_NO;
	private String b_Status;
	private Date b_Enter_Date;
	private Date b_Close_Date;
	private String b_Close_Content;
	private String b_Modify_ID;
	private Date b_Modify_Date;
	private String b_Owner1_ID;
	private String b_Owner2_ID;
	private String b_Owner3_ID;
	private String b_Phone;
	private String b_Address;
	private String b_Owner_Name;
	private String b_Comment;
	private String b_Email1;
	private String b_Email2;
	private String b_Email3;
	public totalProduct() {
		super();
	}
	public totalProduct(int p_NO, String p_Name, String p_Price, String p_Sail_Price, String p_Last_Price,
			String p_Bcategory, String p_Scategory, String p_Comment, String p_Order_Count, String p_Status,
			String p_Writer, Date p_Insert_Date, String p_Modify_Id, Date p_Modify_Date, String p_Show_YN,
			int p_Brand_NO, int or_NO, Date or_Date, int or_P_NO, int pf_NO, String pf_Img1, String pf_Img1_ReName,
			String pf_Img2, String pf_Img2_ReName, String pf_Img3, String pf_Img3_ReName, String pf_Img4,
			String pf_Img4_ReName, String pf_Img5, String pf_Img5_ReName, String pf_Img6, String pf_Img6_ReName,
			String pf_Dimg1, String pf_Dimg1_ReName, String pf_Dimg2, String pf_Dimg2_ReName, String pf_Dimg3,
			String pf_Dimg3_ReName, int pf_P_NO, int op_NO, String option_1, String option_2, String op_Stock,
			Date op_Rec_Date, String op_Status_YN, int op_P_NO, int brand_NO, String b_Name, String b_Logo,
			String b_Logo_ReName, String b_Business_NO, String b_Status, Date b_Enter_Date, Date b_Close_Date,
			String b_Close_Content, String b_Modify_ID, Date b_Modify_Date, String b_Owner1_ID, String b_Owner2_ID,
			String b_Owner3_ID, String b_Phone, String b_Address, String b_Owner_Name, String b_Comment,
			String b_Email1, String b_Email2, String b_Email3) {
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
		this.pf_NO = pf_NO;
		this.pf_Img1 = pf_Img1;
		this.pf_Img1_ReName = pf_Img1_ReName;
		this.pf_Img2 = pf_Img2;
		this.pf_Img2_ReName = pf_Img2_ReName;
		this.pf_Img3 = pf_Img3;
		this.pf_Img3_ReName = pf_Img3_ReName;
		this.pf_Img4 = pf_Img4;
		this.pf_Img4_ReName = pf_Img4_ReName;
		this.pf_Img5 = pf_Img5;
		this.pf_Img5_ReName = pf_Img5_ReName;
		this.pf_Img6 = pf_Img6;
		this.pf_Img6_ReName = pf_Img6_ReName;
		this.pf_Dimg1 = pf_Dimg1;
		this.pf_Dimg1_ReName = pf_Dimg1_ReName;
		this.pf_Dimg2 = pf_Dimg2;
		this.pf_Dimg2_ReName = pf_Dimg2_ReName;
		this.pf_Dimg3 = pf_Dimg3;
		this.pf_Dimg3_ReName = pf_Dimg3_ReName;
		this.pf_P_NO = pf_P_NO;
		this.op_NO = op_NO;
		this.option_1 = option_1;
		this.option_2 = option_2;
		this.op_Stock = op_Stock;
		this.op_Rec_Date = op_Rec_Date;
		this.op_Status_YN = op_Status_YN;
		this.op_P_NO = op_P_NO;
		this.brand_NO = brand_NO;
		this.b_Name = b_Name;
		this.b_Logo = b_Logo;
		this.b_Logo_ReName = b_Logo_ReName;
		this.b_Business_NO = b_Business_NO;
		this.b_Status = b_Status;
		this.b_Enter_Date = b_Enter_Date;
		this.b_Close_Date = b_Close_Date;
		this.b_Close_Content = b_Close_Content;
		this.b_Modify_ID = b_Modify_ID;
		this.b_Modify_Date = b_Modify_Date;
		this.b_Owner1_ID = b_Owner1_ID;
		this.b_Owner2_ID = b_Owner2_ID;
		this.b_Owner3_ID = b_Owner3_ID;
		this.b_Phone = b_Phone;
		this.b_Address = b_Address;
		this.b_Owner_Name = b_Owner_Name;
		this.b_Comment = b_Comment;
		this.b_Email1 = b_Email1;
		this.b_Email2 = b_Email2;
		this.b_Email3 = b_Email3;
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
	public int getPf_NO() {
		return pf_NO;
	}
	public void setPf_NO(int pf_NO) {
		this.pf_NO = pf_NO;
	}
	public String getPf_Img1() {
		return pf_Img1;
	}
	public void setPf_Img1(String pf_Img1) {
		this.pf_Img1 = pf_Img1;
	}
	public String getPf_Img1_ReName() {
		return pf_Img1_ReName;
	}
	public void setPf_Img1_ReName(String pf_Img1_ReName) {
		this.pf_Img1_ReName = pf_Img1_ReName;
	}
	public String getPf_Img2() {
		return pf_Img2;
	}
	public void setPf_Img2(String pf_Img2) {
		this.pf_Img2 = pf_Img2;
	}
	public String getPf_Img2_ReName() {
		return pf_Img2_ReName;
	}
	public void setPf_Img2_ReName(String pf_Img2_ReName) {
		this.pf_Img2_ReName = pf_Img2_ReName;
	}
	public String getPf_Img3() {
		return pf_Img3;
	}
	public void setPf_Img3(String pf_Img3) {
		this.pf_Img3 = pf_Img3;
	}
	public String getPf_Img3_ReName() {
		return pf_Img3_ReName;
	}
	public void setPf_Img3_ReName(String pf_Img3_ReName) {
		this.pf_Img3_ReName = pf_Img3_ReName;
	}
	public String getPf_Img4() {
		return pf_Img4;
	}
	public void setPf_Img4(String pf_Img4) {
		this.pf_Img4 = pf_Img4;
	}
	public String getPf_Img4_ReName() {
		return pf_Img4_ReName;
	}
	public void setPf_Img4_ReName(String pf_Img4_ReName) {
		this.pf_Img4_ReName = pf_Img4_ReName;
	}
	public String getPf_Img5() {
		return pf_Img5;
	}
	public void setPf_Img5(String pf_Img5) {
		this.pf_Img5 = pf_Img5;
	}
	public String getPf_Img5_ReName() {
		return pf_Img5_ReName;
	}
	public void setPf_Img5_ReName(String pf_Img5_ReName) {
		this.pf_Img5_ReName = pf_Img5_ReName;
	}
	public String getPf_Img6() {
		return pf_Img6;
	}
	public void setPf_Img6(String pf_Img6) {
		this.pf_Img6 = pf_Img6;
	}
	public String getPf_Img6_ReName() {
		return pf_Img6_ReName;
	}
	public void setPf_Img6_ReName(String pf_Img6_ReName) {
		this.pf_Img6_ReName = pf_Img6_ReName;
	}
	public String getPf_Dimg1() {
		return pf_Dimg1;
	}
	public void setPf_Dimg1(String pf_Dimg1) {
		this.pf_Dimg1 = pf_Dimg1;
	}
	public String getPf_Dimg1_ReName() {
		return pf_Dimg1_ReName;
	}
	public void setPf_Dimg1_ReName(String pf_Dimg1_ReName) {
		this.pf_Dimg1_ReName = pf_Dimg1_ReName;
	}
	public String getPf_Dimg2() {
		return pf_Dimg2;
	}
	public void setPf_Dimg2(String pf_Dimg2) {
		this.pf_Dimg2 = pf_Dimg2;
	}
	public String getPf_Dimg2_ReName() {
		return pf_Dimg2_ReName;
	}
	public void setPf_Dimg2_ReName(String pf_Dimg2_ReName) {
		this.pf_Dimg2_ReName = pf_Dimg2_ReName;
	}
	public String getPf_Dimg3() {
		return pf_Dimg3;
	}
	public void setPf_Dimg3(String pf_Dimg3) {
		this.pf_Dimg3 = pf_Dimg3;
	}
	public String getPf_Dimg3_ReName() {
		return pf_Dimg3_ReName;
	}
	public void setPf_Dimg3_ReName(String pf_Dimg3_ReName) {
		this.pf_Dimg3_ReName = pf_Dimg3_ReName;
	}
	public int getPf_P_NO() {
		return pf_P_NO;
	}
	public void setPf_P_NO(int pf_P_NO) {
		this.pf_P_NO = pf_P_NO;
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
	public int getBrand_NO() {
		return brand_NO;
	}
	public void setBrand_NO(int brand_NO) {
		this.brand_NO = brand_NO;
	}
	public String getB_Name() {
		return b_Name;
	}
	public void setB_Name(String b_Name) {
		this.b_Name = b_Name;
	}
	public String getB_Logo() {
		return b_Logo;
	}
	public void setB_Logo(String b_Logo) {
		this.b_Logo = b_Logo;
	}
	public String getB_Logo_ReName() {
		return b_Logo_ReName;
	}
	public void setB_Logo_ReName(String b_Logo_ReName) {
		this.b_Logo_ReName = b_Logo_ReName;
	}
	public String getB_Business_NO() {
		return b_Business_NO;
	}
	public void setB_Business_NO(String b_Business_NO) {
		this.b_Business_NO = b_Business_NO;
	}
	public String getB_Status() {
		return b_Status;
	}
	public void setB_Status(String b_Status) {
		this.b_Status = b_Status;
	}
	public Date getB_Enter_Date() {
		return b_Enter_Date;
	}
	public void setB_Enter_Date(Date b_Enter_Date) {
		this.b_Enter_Date = b_Enter_Date;
	}
	public Date getB_Close_Date() {
		return b_Close_Date;
	}
	public void setB_Close_Date(Date b_Close_Date) {
		this.b_Close_Date = b_Close_Date;
	}
	public String getB_Close_Content() {
		return b_Close_Content;
	}
	public void setB_Close_Content(String b_Close_Content) {
		this.b_Close_Content = b_Close_Content;
	}
	public String getB_Modify_ID() {
		return b_Modify_ID;
	}
	public void setB_Modify_ID(String b_Modify_ID) {
		this.b_Modify_ID = b_Modify_ID;
	}
	public Date getB_Modify_Date() {
		return b_Modify_Date;
	}
	public void setB_Modify_Date(Date b_Modify_Date) {
		this.b_Modify_Date = b_Modify_Date;
	}
	public String getB_Owner1_ID() {
		return b_Owner1_ID;
	}
	public void setB_Owner1_ID(String b_Owner1_ID) {
		this.b_Owner1_ID = b_Owner1_ID;
	}
	public String getB_Owner2_ID() {
		return b_Owner2_ID;
	}
	public void setB_Owner2_ID(String b_Owner2_ID) {
		this.b_Owner2_ID = b_Owner2_ID;
	}
	public String getB_Owner3_ID() {
		return b_Owner3_ID;
	}
	public void setB_Owner3_ID(String b_Owner3_ID) {
		this.b_Owner3_ID = b_Owner3_ID;
	}
	public String getB_Phone() {
		return b_Phone;
	}
	public void setB_Phone(String b_Phone) {
		this.b_Phone = b_Phone;
	}
	public String getB_Address() {
		return b_Address;
	}
	public void setB_Address(String b_Address) {
		this.b_Address = b_Address;
	}
	public String getB_Owner_Name() {
		return b_Owner_Name;
	}
	public void setB_Owner_Name(String b_Owner_Name) {
		this.b_Owner_Name = b_Owner_Name;
	}
	public String getB_Comment() {
		return b_Comment;
	}
	public void setB_Comment(String b_Comment) {
		this.b_Comment = b_Comment;
	}
	public String getB_Email1() {
		return b_Email1;
	}
	public void setB_Email1(String b_Email1) {
		this.b_Email1 = b_Email1;
	}
	public String getB_Email2() {
		return b_Email2;
	}
	public void setB_Email2(String b_Email2) {
		this.b_Email2 = b_Email2;
	}
	public String getB_Email3() {
		return b_Email3;
	}
	public void setB_Email3(String b_Email3) {
		this.b_Email3 = b_Email3;
	}
	@Override
	public String toString() {
		return "totalProduct [p_NO=" + p_NO + ", p_Name=" + p_Name + ", p_Price=" + p_Price + ", p_Sail_Price="
				+ p_Sail_Price + ", p_Last_Price=" + p_Last_Price + ", p_Bcategory=" + p_Bcategory + ", p_Scategory="
				+ p_Scategory + ", p_Comment=" + p_Comment + ", p_Order_Count=" + p_Order_Count + ", p_Status="
				+ p_Status + ", p_Writer=" + p_Writer + ", p_Insert_Date=" + p_Insert_Date + ", p_Modify_Id="
				+ p_Modify_Id + ", p_Modify_Date=" + p_Modify_Date + ", p_Show_YN=" + p_Show_YN + ", p_Brand_NO="
				+ p_Brand_NO + ", or_NO=" + or_NO + ", or_Date=" + or_Date + ", or_P_NO=" + or_P_NO + ", pf_NO=" + pf_NO
				+ ", pf_Img1=" + pf_Img1 + ", pf_Img1_ReName=" + pf_Img1_ReName + ", pf_Img2=" + pf_Img2
				+ ", pf_Img2_ReName=" + pf_Img2_ReName + ", pf_Img3=" + pf_Img3 + ", pf_Img3_ReName=" + pf_Img3_ReName
				+ ", pf_Img4=" + pf_Img4 + ", pf_Img4_ReName=" + pf_Img4_ReName + ", pf_Img5=" + pf_Img5
				+ ", pf_Img5_ReName=" + pf_Img5_ReName + ", pf_Img6=" + pf_Img6 + ", pf_Img6_ReName=" + pf_Img6_ReName
				+ ", pf_Dimg1=" + pf_Dimg1 + ", pf_Dimg1_ReName=" + pf_Dimg1_ReName + ", pf_Dimg2=" + pf_Dimg2
				+ ", pf_Dimg2_ReName=" + pf_Dimg2_ReName + ", pf_Dimg3=" + pf_Dimg3 + ", pf_Dimg3_ReName="
				+ pf_Dimg3_ReName + ", pf_P_NO=" + pf_P_NO + ", op_NO=" + op_NO + ", option_1=" + option_1
				+ ", option_2=" + option_2 + ", op_Stock=" + op_Stock + ", op_Rec_Date=" + op_Rec_Date
				+ ", op_Status_YN=" + op_Status_YN + ", op_P_NO=" + op_P_NO + ", brand_NO=" + brand_NO + ", b_Name="
				+ b_Name + ", b_Logo=" + b_Logo + ", b_Logo_ReName=" + b_Logo_ReName + ", b_Business_NO="
				+ b_Business_NO + ", b_Status=" + b_Status + ", b_Enter_Date=" + b_Enter_Date + ", b_Close_Date="
				+ b_Close_Date + ", b_Close_Content=" + b_Close_Content + ", b_Modify_ID=" + b_Modify_ID
				+ ", b_Modify_Date=" + b_Modify_Date + ", b_Owner1_ID=" + b_Owner1_ID + ", b_Owner2_ID=" + b_Owner2_ID
				+ ", b_Owner3_ID=" + b_Owner3_ID + ", b_Phone=" + b_Phone + ", b_Address=" + b_Address
				+ ", b_Owner_Name=" + b_Owner_Name + ", b_Comment=" + b_Comment + ", b_Email1=" + b_Email1
				+ ", b_Email2=" + b_Email2 + ", b_Email3=" + b_Email3 + "]";
	}
   
   
   
   
	
	
}