package com.kh.brocoli.member.model.vo;

import java.sql.Date;

public class Change {
	
	private int ch_No;
	private String ch_Pname;
	private String ch_Price;
	private String ch_Reason;
	private String ch_Comment;
	private Date ch_Date;
	private Date ch_EnDate;
	private String ch_Status;
	private int ch_Or_NO;
	private int ch_Mno;
	
	private Orders ch_ordersMember; //orders 정보 가져오기 admin

	public Change() {
		super();
	}

	public Change(int ch_No, String ch_Pname, String ch_Price, String ch_Reason, String ch_Comment, Date ch_Date,
			Date ch_EnDate, String ch_Status, int ch_Or_NO, int ch_Mno, Orders ch_ordersMember) {
		super();
		this.ch_No = ch_No;
		this.ch_Pname = ch_Pname;
		this.ch_Price = ch_Price;
		this.ch_Reason = ch_Reason;
		this.ch_Comment = ch_Comment;
		this.ch_Date = ch_Date;
		this.ch_EnDate = ch_EnDate;
		this.ch_Status = ch_Status;
		this.ch_Or_NO = ch_Or_NO;
		this.ch_Mno = ch_Mno;
		this.ch_ordersMember = ch_ordersMember;
	}

	public int getCh_No() {
		return ch_No;
	}

	public void setCh_No(int ch_No) {
		this.ch_No = ch_No;
	}

	public String getCh_Pname() {
		return ch_Pname;
	}

	public void setCh_Pname(String ch_Pname) {
		this.ch_Pname = ch_Pname;
	}

	public String getCh_Price() {
		return ch_Price;
	}

	public void setCh_Price(String ch_Price) {
		this.ch_Price = ch_Price;
	}

	public String getCh_Reason() {
		return ch_Reason;
	}

	public void setCh_Reason(String ch_Reason) {
		this.ch_Reason = ch_Reason;
	}

	public String getCh_Comment() {
		return ch_Comment;
	}

	public void setCh_Comment(String ch_Comment) {
		this.ch_Comment = ch_Comment;
	}

	public Date getCh_Date() {
		return ch_Date;
	}

	public void setCh_Date(Date ch_Date) {
		this.ch_Date = ch_Date;
	}

	public Date getCh_EnDate() {
		return ch_EnDate;
	}

	public void setCh_EnDate(Date ch_EnDate) {
		this.ch_EnDate = ch_EnDate;
	}

	public String getCh_Status() {
		return ch_Status;
	}

	public void setCh_Status(String ch_Status) {
		this.ch_Status = ch_Status;
	}

	public int getCh_Or_NO() {
		return ch_Or_NO;
	}

	public void setCh_Or_NO(int ch_Or_NO) {
		this.ch_Or_NO = ch_Or_NO;
	}

	public int getCh_Mno() {
		return ch_Mno;
	}

	public void setCh_Mno(int ch_Mno) {
		this.ch_Mno = ch_Mno;
	}

	public Orders getCh_ordersMember() {
		return ch_ordersMember;
	}

	public void setCh_ordersMember(Orders ch_ordersMember) {
		this.ch_ordersMember = ch_ordersMember;
	}

	@Override
	public String toString() {
		return "Change [ch_No=" + ch_No + ", ch_Pname=" + ch_Pname + ", ch_Price=" + ch_Price + ", ch_Reason="
				+ ch_Reason + ", ch_Comment=" + ch_Comment + ", ch_Date=" + ch_Date + ", ch_EnDate=" + ch_EnDate
				+ ", ch_Status=" + ch_Status + ", ch_Or_NO=" + ch_Or_NO + ", ch_Mno=" + ch_Mno + ", ch_ordersMember="
				+ ch_ordersMember + "]";
	}
	
}
