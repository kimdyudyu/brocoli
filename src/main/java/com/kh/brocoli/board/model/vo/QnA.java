package com.kh.brocoli.board.model.vo;

import java.sql.Date;

public class QnA {
	private int q_No;
	private String q_Writer;
	private String q_Title;
	private String q_Content;
	private Date q_Date;
	private String q_Count;
	private String q_Modify_ID;
	private Date q_Modify_Date;
	private String q_Kind;
	private String q_Status;
	private String q_View_Check;
	private String q_Img1;
	private String q_Img1_ReName;
	private String q_Img2;
	private String q_Img2_ReName;
	private int q_Mno;
	private String q_MID;
	
	public QnA() {
		super();
	}

	public QnA(int q_No, String q_Writer, String q_Title, String q_Content, Date q_Date, String q_Count,
			String q_Modify_ID, Date q_Modify_Date, String q_Kind, String q_Status, String q_View_Check, String q_Img1,
			String q_Img1_ReName, String q_Img2, String q_Img2_ReName, int q_Mno, String q_MID) {
		super();
		this.q_No = q_No;
		this.q_Writer = q_Writer;
		this.q_Title = q_Title;
		this.q_Content = q_Content;
		this.q_Date = q_Date;
		this.q_Count = q_Count;
		this.q_Modify_ID = q_Modify_ID;
		this.q_Modify_Date = q_Modify_Date;
		this.q_Kind = q_Kind;
		this.q_Status = q_Status;
		this.q_View_Check = q_View_Check;
		this.q_Img1 = q_Img1;
		this.q_Img1_ReName = q_Img1_ReName;
		this.q_Img2 = q_Img2;
		this.q_Img2_ReName = q_Img2_ReName;
		this.q_Mno = q_Mno;
		this.q_MID = q_MID;
	}

	public int getQ_No() {
		return q_No;
	}

	public void setQ_No(int q_No) {
		this.q_No = q_No;
	}

	public String getQ_Writer() {
		return q_Writer;
	}

	public void setQ_Writer(String q_Writer) {
		this.q_Writer = q_Writer;
	}

	public String getQ_Title() {
		return q_Title;
	}

	public void setQ_Title(String q_Title) {
		this.q_Title = q_Title;
	}

	public String getQ_Content() {
		return q_Content;
	}

	public void setQ_Content(String q_Content) {
		this.q_Content = q_Content;
	}

	public Date getQ_Date() {
		return q_Date;
	}

	public void setQ_Date(Date q_Date) {
		this.q_Date = q_Date;
	}

	public String getQ_Count() {
		return q_Count;
	}

	public void setQ_Count(String q_Count) {
		this.q_Count = q_Count;
	}

	public String getQ_Modify_ID() {
		return q_Modify_ID;
	}

	public void setQ_Modify_ID(String q_Modify_ID) {
		this.q_Modify_ID = q_Modify_ID;
	}

	public Date getQ_Modify_Date() {
		return q_Modify_Date;
	}

	public void setQ_Modify_Date(Date q_Modify_Date) {
		this.q_Modify_Date = q_Modify_Date;
	}

	public String getQ_Kind() {
		return q_Kind;
	}

	public void setQ_Kind(String q_Kind) {
		this.q_Kind = q_Kind;
	}

	public String getQ_Status() {
		return q_Status;
	}

	public void setQ_Status(String q_Status) {
		this.q_Status = q_Status;
	}

	public String getQ_View_Check() {
		return q_View_Check;
	}

	public void setQ_View_Check(String q_View_Check) {
		this.q_View_Check = q_View_Check;
	}

	public String getQ_Img1() {
		return q_Img1;
	}

	public void setQ_Img1(String q_Img1) {
		this.q_Img1 = q_Img1;
	}

	public String getQ_Img1_ReName() {
		return q_Img1_ReName;
	}

	public void setQ_Img1_ReName(String q_Img1_ReName) {
		this.q_Img1_ReName = q_Img1_ReName;
	}

	public String getQ_Img2() {
		return q_Img2;
	}

	public void setQ_Img2(String q_Img2) {
		this.q_Img2 = q_Img2;
	}

	public String getQ_Img2_ReName() {
		return q_Img2_ReName;
	}

	public void setQ_Img2_ReName(String q_Img2_ReName) {
		this.q_Img2_ReName = q_Img2_ReName;
	}

	public int getQ_Mno() {
		return q_Mno;
	}

	public void setQ_Mno(int q_Mno) {
		this.q_Mno = q_Mno;
	}

	public String getQ_MID() {
		return q_MID;
	}

	public void setQ_MID(String q_MID) {
		this.q_MID = q_MID;
	}

	@Override
	public String toString() {
		return "QnA [q_No=" + q_No + ", q_Writer=" + q_Writer + ", q_Title=" + q_Title + ", q_Content=" + q_Content
				+ ", q_Date=" + q_Date + ", q_Count=" + q_Count + ", q_Modify_ID=" + q_Modify_ID + ", q_Modify_Date="
				+ q_Modify_Date + ", q_Kind=" + q_Kind + ", q_Status=" + q_Status + ", q_View_Check=" + q_View_Check
				+ ", q_Img1=" + q_Img1 + ", q_Img1_ReName=" + q_Img1_ReName + ", q_Img2=" + q_Img2 + ", q_Img2_ReName="
				+ q_Img2_ReName + ", q_Mno=" + q_Mno + ", q_MID=" + q_MID + "]";
	}
}
