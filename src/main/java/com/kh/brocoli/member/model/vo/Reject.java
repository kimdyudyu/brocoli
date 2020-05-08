package com.kh.brocoli.member.model.vo;

import java.sql.Date;

public class Reject {
	
	private int re_No;
	private String re_Pname;
	private String re_Price;
	private String re_Reason;
	private String re_Comment;
	private Date re_Date;
	private Date re_Enddate;
	private String re_Status;
	private int re_MN_OR_NO;
	private int re_Mno;
	
	private Orders re_ordersMember;  //admin orders정보 가져오기
	
	// 해당 resultMap ownerOrder-Mapper 안에 
	// 만들어 놓았으니 필요하신분 가서 복붙하여 사용하세욥 - 주완.

	public Reject() {
		super();
	}
	
	public Reject(int re_No, String re_Pname, String re_Price, String re_Reason, String re_Comment, Date re_Date,
			Date re_Enddate, String re_Status, int re_MN_OR_NO, int re_Mno, Orders re_ordersMember) {
		super();
		this.re_No = re_No;
		this.re_Pname = re_Pname;
		this.re_Price = re_Price;
		this.re_Reason = re_Reason;
		this.re_Comment = re_Comment;
		this.re_Date = re_Date;
		this.re_Enddate = re_Enddate;
		this.re_Status = re_Status;
		this.re_MN_OR_NO = re_MN_OR_NO;
		this.re_Mno = re_Mno;
		this.re_ordersMember = re_ordersMember;
	}

	public int getRe_No() {
		return re_No;
	}

	public void setRe_No(int re_No) {
		this.re_No = re_No;
	}

	public String getRe_Pname() {
		return re_Pname;
	}

	public void setRe_Pname(String re_Pname) {
		this.re_Pname = re_Pname;
	}

	public String getRe_Price() {
		return re_Price;
	}

	public void setRe_Price(String re_Price) {
		this.re_Price = re_Price;
	}

	public String getRe_Reason() {
		return re_Reason;
	}

	public void setRe_Reason(String re_Reason) {
		this.re_Reason = re_Reason;
	}

	public String getRe_Comment() {
		return re_Comment;
	}

	public void setRe_Comment(String re_Comment) {
		this.re_Comment = re_Comment;
	}

	public Date getRe_Date() {
		return re_Date;
	}

	public void setRe_Date(Date re_Date) {
		this.re_Date = re_Date;
	}

	public Date getRe_Enddate() {
		return re_Enddate;
	}

	public void setRe_Enddate(Date re_Enddate) {
		this.re_Enddate = re_Enddate;
	}

	public String getRe_Status() {
		return re_Status;
	}

	public void setRe_Status(String re_Status) {
		this.re_Status = re_Status;
	}

	public int getRe_MN_OR_NO() {
		return re_MN_OR_NO;
	}

	public void setRe_MN_OR_NO(int re_MN_OR_NO) {
		this.re_MN_OR_NO = re_MN_OR_NO;
	}

	public int getRe_Mno() {
		return re_Mno;
	}

	public void setRe_Mno(int re_Mno) {
		this.re_Mno = re_Mno;
	}

	public Orders getRe_ordersMember() {
		return re_ordersMember;
	}

	public void setRe_ordersMember(Orders re_ordersMember) {
		this.re_ordersMember = re_ordersMember;
	}

	@Override
	public String toString() {
		return "Reject [re_No=" + re_No + ", re_Pname=" + re_Pname + ", re_Price=" + re_Price + ", re_Reason="
				+ re_Reason + ", re_Comment=" + re_Comment + ", re_Date=" + re_Date + ", re_Enddate=" + re_Enddate
				+ ", re_Status=" + re_Status + ", re_MN_OR_NO=" + re_MN_OR_NO + ", re_Mno=" + re_Mno + ", re_ordersMember="
				+ re_ordersMember + "]";
	}
	
}
