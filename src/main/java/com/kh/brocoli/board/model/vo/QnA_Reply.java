package com.kh.brocoli.board.model.vo;

import java.sql.Date;

public class QnA_Reply {
	
	private int qr_No;
	private String qr_Comment;
	private String qr_Qno;
	private Date qr_Date;
	private String qr_Modify_Check;
	private Date qr_Modify_Date;
	private String qr_Status;
	private String qr_Mname;
	
	public QnA_Reply() {
		super();
	}

	public QnA_Reply(int qr_No, String qr_Comment, String qr_Qno, Date qr_Date, String qr_Modify_Check,
			Date qr_Modify_Date, String qr_Status, String qr_Mname) {
		super();
		this.qr_No = qr_No;
		this.qr_Comment = qr_Comment;
		this.qr_Qno = qr_Qno;
		this.qr_Date = qr_Date;
		this.qr_Modify_Check = qr_Modify_Check;
		this.qr_Modify_Date = qr_Modify_Date;
		this.qr_Status = qr_Status;
		this.qr_Mname = qr_Mname;
	}

	public int getQr_No() {
		return qr_No;
	}

	public void setQr_No(int qr_No) {
		this.qr_No = qr_No;
	}

	public String getQr_Comment() {
		return qr_Comment;
	}

	public void setQr_Comment(String qr_Comment) {
		this.qr_Comment = qr_Comment;
	}

	public String getQr_Qno() {
		return qr_Qno;
	}

	public void setQr_Qno(String qr_Qno) {
		this.qr_Qno = qr_Qno;
	}

	public Date getQr_Date() {
		return qr_Date;
	}

	public void setQr_Date(Date qr_Date) {
		this.qr_Date = qr_Date;
	}

	public String getQr_Modify_Check() {
		return qr_Modify_Check;
	}

	public void setQr_Modify_Check(String qr_Modify_Check) {
		this.qr_Modify_Check = qr_Modify_Check;
	}

	public Date getQr_Modify_Date() {
		return qr_Modify_Date;
	}

	public void setQr_Modify_Date(Date qr_Modify_Date) {
		this.qr_Modify_Date = qr_Modify_Date;
	}

	public String getQr_Status() {
		return qr_Status;
	}

	public void setQr_Status(String qr_Status) {
		this.qr_Status = qr_Status;
	}

	public String getQr_Mname() {
		return qr_Mname;
	}

	public void setQr_Mname(String qr_Mname) {
		this.qr_Mname = qr_Mname;
	}

	@Override
	public String toString() {
		return "QnA_Reply [qr_No=" + qr_No + ", qr_Comment=" + qr_Comment + ", qr_Qno=" + qr_Qno + ", qr_Date="
				+ qr_Date + ", qr_Modify_Check=" + qr_Modify_Check + ", qr_Modify_Date=" + qr_Modify_Date
				+ ", qr_Status=" + qr_Status + ", qr_Mname=" + qr_Mname + "]";
	}
	
}
