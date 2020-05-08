package com.kh.brocoli.product.model.vo;

import java.sql.Date;

import com.kh.brocoli.member.model.vo.Member;

public class Review_Reply {
	
	private int vr_NO;
	private String vr_Parentno;
	private String vr_Writer;
	private String vr_Content;
	private Date vr_Date;
	private Date vr_Modify_Date;
	private String vr_Count;
	private String vr_Check;
	private String vr_Status;
	private int vr_Mno;
	
	private Brand blist;
	private Member mlist;
	
	public Review_Reply() {
		super();
	}

	public Review_Reply(int vr_NO, String vr_Parentno, String vr_Writer, String vr_Content, Date vr_Date,
			Date vr_Modify_Date, String vr_Count, String vr_Check, String vr_Status, int vr_Mno, Brand blist,
			Member mlist) {
		super();
		this.vr_NO = vr_NO;
		this.vr_Parentno = vr_Parentno;
		this.vr_Writer = vr_Writer;
		this.vr_Content = vr_Content;
		this.vr_Date = vr_Date;
		this.vr_Modify_Date = vr_Modify_Date;
		this.vr_Count = vr_Count;
		this.vr_Check = vr_Check;
		this.vr_Status = vr_Status;
		this.vr_Mno = vr_Mno;
		this.blist = blist;
		this.mlist = mlist;
	}

	public int getVr_NO() {
		return vr_NO;
	}

	public void setVr_NO(int vr_NO) {
		this.vr_NO = vr_NO;
	}

	public String getVr_Parentno() {
		return vr_Parentno;
	}

	public void setVr_Parentno(String vr_Parentno) {
		this.vr_Parentno = vr_Parentno;
	}

	public String getVr_Writer() {
		return vr_Writer;
	}

	public void setVr_Writer(String vr_Writer) {
		this.vr_Writer = vr_Writer;
	}

	public String getVr_Content() {
		return vr_Content;
	}

	public void setVr_Content(String vr_Content) {
		this.vr_Content = vr_Content;
	}

	public Date getVr_Date() {
		return vr_Date;
	}

	public void setVr_Date(Date vr_Date) {
		this.vr_Date = vr_Date;
	}

	public Date getVr_Modify_Date() {
		return vr_Modify_Date;
	}

	public void setVr_Modify_Date(Date vr_Modify_Date) {
		this.vr_Modify_Date = vr_Modify_Date;
	}

	public String getVr_Count() {
		return vr_Count;
	}

	public void setVr_Count(String vr_Count) {
		this.vr_Count = vr_Count;
	}

	public String getVr_Check() {
		return vr_Check;
	}

	public void setVr_Check(String vr_Check) {
		this.vr_Check = vr_Check;
	}

	public String getVr_Status() {
		return vr_Status;
	}

	public void setVr_Status(String vr_Status) {
		this.vr_Status = vr_Status;
	}

	public int getVr_Mno() {
		return vr_Mno;
	}

	public void setVr_Mno(int vr_Mno) {
		this.vr_Mno = vr_Mno;
	}

	public Brand getBlist() {
		return blist;
	}

	public void setBlist(Brand blist) {
		this.blist = blist;
	}

	public Member getMlist() {
		return mlist;
	}

	public void setMlist(Member mlist) {
		this.mlist = mlist;
	}

	@Override
	public String toString() {
		return "Review_Reply [vr_NO=" + vr_NO + ", vr_Parentno=" + vr_Parentno + ", vr_Writer=" + vr_Writer
				+ ", vr_Content=" + vr_Content + ", vr_Date=" + vr_Date + ", vr_Modify_Date=" + vr_Modify_Date
				+ ", vr_Count=" + vr_Count + ", vr_Check=" + vr_Check + ", vr_Status=" + vr_Status + ", vr_Mno="
				+ vr_Mno + ", blist=" + blist + ", mlist=" + mlist + "]";
	}

	
}
