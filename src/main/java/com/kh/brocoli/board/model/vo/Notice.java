package com.kh.brocoli.board.model.vo;

import java.sql.Date;

public class Notice {
	private int n_No;
	private String n_Writer;
	private String n_Title;
	private String n_Content;
	private Date n_Date;
	private String n_Count;
	private Date n_Modify_Date;
	private String n_Status;
	private String n_Img;
	private String n_Img_ReName;
	private int n_Mno;
	private String n_MID;
	
	public Notice() {
		super();
	}

	public Notice(int n_No, String n_Writer, String n_Title, String n_Content, Date n_Date, String n_Count,
			Date n_Modify_Date, String n_Status, String n_Img, String n_Img_ReName, int n_Mno, String n_MID) {
		super();
		this.n_No = n_No;
		this.n_Writer = n_Writer;
		this.n_Title = n_Title;
		this.n_Content = n_Content;
		this.n_Date = n_Date;
		this.n_Count = n_Count;
		this.n_Modify_Date = n_Modify_Date;
		this.n_Status = n_Status;
		this.n_Img = n_Img;
		this.n_Img_ReName = n_Img_ReName;
		this.n_Mno = n_Mno;
		this.n_MID = n_MID;
	}

	public int getN_No() {
		return n_No;
	}

	public void setN_No(int n_No) {
		this.n_No = n_No;
	}

	public String getN_Writer() {
		return n_Writer;
	}

	public void setN_Writer(String n_Writer) {
		this.n_Writer = n_Writer;
	}

	public String getN_Title() {
		return n_Title;
	}

	public void setN_Title(String n_Title) {
		this.n_Title = n_Title;
	}

	public String getN_Content() {
		return n_Content;
	}

	public void setN_Content(String n_Content) {
		this.n_Content = n_Content;
	}

	public Date getN_Date() {
		return n_Date;
	}

	public void setN_Date(Date n_Date) {
		this.n_Date = n_Date;
	}

	public String getN_Count() {
		return n_Count;
	}

	public void setN_Count(String n_Count) {
		this.n_Count = n_Count;
	}

	public Date getN_Modify_Date() {
		return n_Modify_Date;
	}

	public void setN_Modify_Date(Date n_Modify_Date) {
		this.n_Modify_Date = n_Modify_Date;
	}

	public String getN_Status() {
		return n_Status;
	}

	public void setN_Status(String n_Status) {
		this.n_Status = n_Status;
	}

	public String getN_Img() {
		return n_Img;
	}

	public void setN_Img(String n_Img) {
		this.n_Img = n_Img;
	}

	public String getN_Img_ReName() {
		return n_Img_ReName;
	}

	public void setN_Img_ReName(String n_Img_ReName) {
		this.n_Img_ReName = n_Img_ReName;
	}

	public int getN_Mno() {
		return n_Mno;
	}

	public void setN_Mno(int n_Mno) {
		this.n_Mno = n_Mno;
	}

	public String getN_MID() {
		return n_MID;
	}

	public void setN_MID(String n_MID) {
		this.n_MID = n_MID;
	}

	@Override
	public String toString() {
		return "Notice [n_No=" + n_No + ", n_Writer=" + n_Writer + ", n_Title=" + n_Title + ", n_Content=" + n_Content
				+ ", n_Date=" + n_Date + ", n_Count=" + n_Count + ", n_Modify_Date=" + n_Modify_Date + ", n_Status="
				+ n_Status + ", n_Img=" + n_Img + ", n_Img_ReName=" + n_Img_ReName + ", n_Mno=" + n_Mno + ", n_MID="
				+ n_MID + "]";
	}

	
	
}
