package com.kh.brocoli.general.model.vo;

import java.sql.Date;
import java.util.ArrayList;

import com.kh.brocoli.member.model.vo.Member;
import com.kh.brocoli.product.model.vo.Brand;

public class Contact {
	private int con_NO;
	private Date con_Date;
	private String con_Writer;
	private String con_Content;
	private String con_Title;
	private String con_View_Check;
	private String con_Img;
	private String con_Img_ReName;
	private String con_Status;
	private int con_Mno;
	private int con_Bno;
	
	private String brandName; // Contact + Member에 있는 brand 추가
	
	private Brand blist;
	
	public Contact() {
		super();
	}

	public Contact(int con_NO, Date con_Date, String con_Writer, String con_Content, String con_Title,
			String con_View_Check, String con_Img, String con_Img_ReName, String con_Status, int con_Mno, int con_Bno,
			String brandName, Brand blist) {
		super();
		this.con_NO = con_NO;
		this.con_Date = con_Date;
		this.con_Writer = con_Writer;
		this.con_Content = con_Content;
		this.con_Title = con_Title;
		this.con_View_Check = con_View_Check;
		this.con_Img = con_Img;
		this.con_Img_ReName = con_Img_ReName;
		this.con_Status = con_Status;
		this.con_Mno = con_Mno;
		this.con_Bno = con_Bno;
		this.brandName = brandName;
		this.blist = blist;
	}

	public int getCon_NO() {
		return con_NO;
	}

	public void setCon_NO(int con_NO) {
		this.con_NO = con_NO;
	}

	public Date getCon_Date() {
		return con_Date;
	}

	public void setCon_Date(Date con_Date) {
		this.con_Date = con_Date;
	}

	public String getCon_Writer() {
		return con_Writer;
	}

	public void setCon_Writer(String con_Writer) {
		this.con_Writer = con_Writer;
	}

	public String getCon_Content() {
		return con_Content;
	}

	public void setCon_Content(String con_Content) {
		this.con_Content = con_Content;
	}

	public String getCon_Title() {
		return con_Title;
	}

	public void setCon_Title(String con_Title) {
		this.con_Title = con_Title;
	}

	public String getCon_View_Check() {
		return con_View_Check;
	}

	public void setCon_View_Check(String con_View_Check) {
		this.con_View_Check = con_View_Check;
	}

	public String getCon_Img() {
		return con_Img;
	}

	public void setCon_Img(String con_Img) {
		this.con_Img = con_Img;
	}

	public String getCon_Img_ReName() {
		return con_Img_ReName;
	}

	public void setCon_Img_ReName(String con_Img_ReName) {
		this.con_Img_ReName = con_Img_ReName;
	}

	public String getCon_Status() {
		return con_Status;
	}

	public void setCon_Status(String con_Status) {
		this.con_Status = con_Status;
	}

	public int getCon_Mno() {
		return con_Mno;
	}

	public void setCon_Mno(int con_Mno) {
		this.con_Mno = con_Mno;
	}

	public int getCon_Bno() {
		return con_Bno;
	}

	public void setCon_Bno(int con_Bno) {
		this.con_Bno = con_Bno;
	}

	public String getBrandName() {
		return brandName;
	}

	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}

	public Brand getBlist() {
		return blist;
	}

	public void setBlist(Brand blist) {
		this.blist = blist;
	}

	@Override
	public String toString() {
		return "Contact [con_NO=" + con_NO + ", con_Date=" + con_Date + ", con_Writer=" + con_Writer + ", con_Content="
				+ con_Content + ", con_Title=" + con_Title + ", con_View_Check=" + con_View_Check + ", con_Img="
				+ con_Img + ", con_Img_ReName=" + con_Img_ReName + ", con_Status=" + con_Status + ", con_Mno=" + con_Mno
				+ ", con_Bno=" + con_Bno + ", brandName=" + brandName + ", blist=" + blist + "]";
	}

	
	
}
