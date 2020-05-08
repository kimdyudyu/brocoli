package com.kh.brocoli.magazine.model.vo;

import java.sql.Date;

import com.kh.brocoli.product.model.vo.Brand;

public class Magazine2 {
	  
	  private int m_NO;
	  private String m_ID;
	  private String m_Title;
	  private String m_Comment;
	  private Date m_Date;
	  private String m_Status;
	  private String m_Category;
	  private String m_Count;
	  private int m_Brand_NO;
	  private int m_Mno;
	  
	  private Magazine_File mFile;
	  private Brand brand;
	public Magazine2() {
		super();
	}
	public Magazine2(int m_NO, String m_ID, String m_Title, String m_Comment, Date m_Date, String m_Status,
			String m_Category, String m_Count, int m_Brand_NO, int m_Mno, Magazine_File mFile, Brand brand) {
		super();
		this.m_NO = m_NO;
		this.m_ID = m_ID;
		this.m_Title = m_Title;
		this.m_Comment = m_Comment;
		this.m_Date = m_Date;
		this.m_Status = m_Status;
		this.m_Category = m_Category;
		this.m_Count = m_Count;
		this.m_Brand_NO = m_Brand_NO;
		this.m_Mno = m_Mno;
		this.mFile = mFile;
		this.brand = brand;
	}
	public int getM_NO() {
		return m_NO;
	}
	public void setM_NO(int m_NO) {
		this.m_NO = m_NO;
	}
	public String getM_ID() {
		return m_ID;
	}
	public void setM_ID(String m_ID) {
		this.m_ID = m_ID;
	}
	public String getM_Title() {
		return m_Title;
	}
	public void setM_Title(String m_Title) {
		this.m_Title = m_Title;
	}
	public String getM_Comment() {
		return m_Comment;
	}
	public void setM_Comment(String m_Comment) {
		this.m_Comment = m_Comment;
	}
	public Date getM_Date() {
		return m_Date;
	}
	public void setM_Date(Date m_Date) {
		this.m_Date = m_Date;
	}
	public String getM_Status() {
		return m_Status;
	}
	public void setM_Status(String m_Status) {
		this.m_Status = m_Status;
	}
	public String getM_Category() {
		return m_Category;
	}
	public void setM_Category(String m_Category) {
		this.m_Category = m_Category;
	}
	public String getM_Count() {
		return m_Count;
	}
	public void setM_Count(String m_Count) {
		this.m_Count = m_Count;
	}
	public int getM_Brand_NO() {
		return m_Brand_NO;
	}
	public void setM_Brand_NO(int m_Brand_NO) {
		this.m_Brand_NO = m_Brand_NO;
	}
	public int getM_Mno() {
		return m_Mno;
	}
	public void setM_Mno(int m_Mno) {
		this.m_Mno = m_Mno;
	}
	public Magazine_File getmFile() {
		return mFile;
	}
	public void setmFile(Magazine_File mFile) {
		this.mFile = mFile;
	}
	public Brand getBrand() {
		return brand;
	}
	public void setBrand(Brand brand) {
		this.brand = brand;
	}
	@Override
	public String toString() {
		return "Magazine2 [m_NO=" + m_NO + ", m_ID=" + m_ID + ", m_Title=" + m_Title + ", m_Comment=" + m_Comment
				+ ", m_Date=" + m_Date + ", m_Status=" + m_Status + ", m_Category=" + m_Category + ", m_Count="
				+ m_Count + ", m_Brand_NO=" + m_Brand_NO + ", m_Mno=" + m_Mno + ", mFile=" + mFile + ", brand=" + brand
				+ "]";
	}
		  
}
