package com.kh.brocoli.product.model.vo;

import java.sql.Date;

public class QnAComment {
	
	private int pq_No;
	private String pq_Writer;
	private String pq_Id;
	private String pq_Content;
	private Date pq_Date;
	private Date pq_Modify_Date;
	private String pq_Count;
	private String pq_Check;
	private String pq_Status;
	private String pq_Img1;
	private String pq_Img1_ReName;
	private String pq_Img2;
	private String pq_Img2_ReName;
	private int pq_mNo;
	private int pq_P_No;
	private int pq_B_No;
	
	private int pqr_No;
	private String pqr_ParentNo;
	private String pqr_Writer;
	private String pqr_Id;
	private String pqr_Content;
	private Date pqr_Date;
	private Date pqr_Modify_Date;
	private String pqr_Count;
	private String pqr_Check;
	private String pqr_Status;
	private int pqr_Mno;
	private int pqr_bNo;
	
	
	public QnAComment() {
		super();
	}


	public QnAComment(int pq_No, String pq_Writer, String pq_Id, String pq_Content, Date pq_Date, Date pq_Modify_Date,
			String pq_Count, String pq_Check, String pq_Status, String pq_Img1, String pq_Img1_ReName, String pq_Img2,
			String pq_Img2_ReName, int pq_mNo, int pq_P_No, int pq_B_No, int pqr_No, String pqr_ParentNo,
			String pqr_Writer, String pqr_Id, String pqr_Content, Date pqr_Date, Date pqr_Modify_Date, String pqr_Count,
			String pqr_Check, String pqr_Status, int pqr_Mno, int pqr_bNo) {
		super();
		this.pq_No = pq_No;
		this.pq_Writer = pq_Writer;
		this.pq_Id = pq_Id;
		this.pq_Content = pq_Content;
		this.pq_Date = pq_Date;
		this.pq_Modify_Date = pq_Modify_Date;
		this.pq_Count = pq_Count;
		this.pq_Check = pq_Check;
		this.pq_Status = pq_Status;
		this.pq_Img1 = pq_Img1;
		this.pq_Img1_ReName = pq_Img1_ReName;
		this.pq_Img2 = pq_Img2;
		this.pq_Img2_ReName = pq_Img2_ReName;
		this.pq_mNo = pq_mNo;
		this.pq_P_No = pq_P_No;
		this.pq_B_No = pq_B_No;
		this.pqr_No = pqr_No;
		this.pqr_ParentNo = pqr_ParentNo;
		this.pqr_Writer = pqr_Writer;
		this.pqr_Id = pqr_Id;
		this.pqr_Content = pqr_Content;
		this.pqr_Date = pqr_Date;
		this.pqr_Modify_Date = pqr_Modify_Date;
		this.pqr_Count = pqr_Count;
		this.pqr_Check = pqr_Check;
		this.pqr_Status = pqr_Status;
		this.pqr_Mno = pqr_Mno;
		this.pqr_bNo = pqr_bNo;
	}


	public int getPq_No() {
		return pq_No;
	}


	public void setPq_No(int pq_No) {
		this.pq_No = pq_No;
	}


	public String getPq_Writer() {
		return pq_Writer;
	}


	public void setPq_Writer(String pq_Writer) {
		this.pq_Writer = pq_Writer;
	}


	public String getPq_Id() {
		return pq_Id;
	}


	public void setPq_Id(String pq_Id) {
		this.pq_Id = pq_Id;
	}


	public String getPq_Content() {
		return pq_Content;
	}


	public void setPq_Content(String pq_Content) {
		this.pq_Content = pq_Content;
	}


	public Date getPq_Date() {
		return pq_Date;
	}


	public void setPq_Date(Date pq_Date) {
		this.pq_Date = pq_Date;
	}


	public Date getPq_Modify_Date() {
		return pq_Modify_Date;
	}


	public void setPq_Modify_Date(Date pq_Modify_Date) {
		this.pq_Modify_Date = pq_Modify_Date;
	}


	public String getPq_Count() {
		return pq_Count;
	}


	public void setPq_Count(String pq_Count) {
		this.pq_Count = pq_Count;
	}


	public String getPq_Check() {
		return pq_Check;
	}


	public void setPq_Check(String pq_Check) {
		this.pq_Check = pq_Check;
	}


	public String getPq_Status() {
		return pq_Status;
	}


	public void setPq_Status(String pq_Status) {
		this.pq_Status = pq_Status;
	}


	public String getPq_Img1() {
		return pq_Img1;
	}


	public void setPq_Img1(String pq_Img1) {
		this.pq_Img1 = pq_Img1;
	}


	public String getPq_Img1_ReName() {
		return pq_Img1_ReName;
	}


	public void setPq_Img1_ReName(String pq_Img1_ReName) {
		this.pq_Img1_ReName = pq_Img1_ReName;
	}


	public String getPq_Img2() {
		return pq_Img2;
	}


	public void setPq_Img2(String pq_Img2) {
		this.pq_Img2 = pq_Img2;
	}


	public String getPq_Img2_ReName() {
		return pq_Img2_ReName;
	}


	public void setPq_Img2_ReName(String pq_Img2_ReName) {
		this.pq_Img2_ReName = pq_Img2_ReName;
	}


	public int getPq_mNo() {
		return pq_mNo;
	}


	public void setPq_mNo(int pq_mNo) {
		this.pq_mNo = pq_mNo;
	}


	public int getPq_P_No() {
		return pq_P_No;
	}


	public void setPq_P_No(int pq_P_No) {
		this.pq_P_No = pq_P_No;
	}


	public int getPq_B_No() {
		return pq_B_No;
	}


	public void setPq_B_No(int pq_B_No) {
		this.pq_B_No = pq_B_No;
	}


	public int getPqr_No() {
		return pqr_No;
	}


	public void setPqr_No(int pqr_No) {
		this.pqr_No = pqr_No;
	}


	public String getPqr_ParentNo() {
		return pqr_ParentNo;
	}


	public void setPqr_ParentNo(String pqr_ParentNo) {
		this.pqr_ParentNo = pqr_ParentNo;
	}


	public String getPqr_Writer() {
		return pqr_Writer;
	}


	public void setPqr_Writer(String pqr_Writer) {
		this.pqr_Writer = pqr_Writer;
	}


	public String getPqr_Id() {
		return pqr_Id;
	}


	public void setPqr_Id(String pqr_Id) {
		this.pqr_Id = pqr_Id;
	}


	public String getPqr_Content() {
		return pqr_Content;
	}


	public void setPqr_Content(String pqr_Content) {
		this.pqr_Content = pqr_Content;
	}


	public Date getPqr_Date() {
		return pqr_Date;
	}


	public void setPqr_Date(Date pqr_Date) {
		this.pqr_Date = pqr_Date;
	}


	public Date getPqr_Modify_Date() {
		return pqr_Modify_Date;
	}


	public void setPqr_Modify_Date(Date pqr_Modify_Date) {
		this.pqr_Modify_Date = pqr_Modify_Date;
	}


	public String getPqr_Count() {
		return pqr_Count;
	}


	public void setPqr_Count(String pqr_Count) {
		this.pqr_Count = pqr_Count;
	}


	public String getPqr_Check() {
		return pqr_Check;
	}


	public void setPqr_Check(String pqr_Check) {
		this.pqr_Check = pqr_Check;
	}


	public String getPqr_Status() {
		return pqr_Status;
	}


	public void setPqr_Status(String pqr_Status) {
		this.pqr_Status = pqr_Status;
	}


	public int getPqr_Mno() {
		return pqr_Mno;
	}


	public void setPqr_Mno(int pqr_Mno) {
		this.pqr_Mno = pqr_Mno;
	}


	public int getPqr_bNo() {
		return pqr_bNo;
	}


	public void setPqr_bNo(int pqr_bNo) {
		this.pqr_bNo = pqr_bNo;
	}


	@Override
	public String toString() {
		return "QnAComment [pq_No=" + pq_No + ", pq_Writer=" + pq_Writer + ", pq_Id=" + pq_Id + ", pq_Content="
				+ pq_Content + ", pq_Date=" + pq_Date + ", pq_Modify_Date=" + pq_Modify_Date + ", pq_Count=" + pq_Count
				+ ", pq_Check=" + pq_Check + ", pq_Status=" + pq_Status + ", pq_Img1=" + pq_Img1 + ", pq_Img1_ReName="
				+ pq_Img1_ReName + ", pq_Img2=" + pq_Img2 + ", pq_Img2_ReName=" + pq_Img2_ReName + ", pq_mNo=" + pq_mNo
				+ ", pq_P_No=" + pq_P_No + ", pq_B_No=" + pq_B_No + ", pqr_No=" + pqr_No + ", pqr_ParentNo="
				+ pqr_ParentNo + ", pqr_Writer=" + pqr_Writer + ", pqr_Id=" + pqr_Id + ", pqr_Content=" + pqr_Content
				+ ", pqr_Date=" + pqr_Date + ", pqr_Modify_Date=" + pqr_Modify_Date + ", pqr_Count=" + pqr_Count
				+ ", pqr_Check=" + pqr_Check + ", pqr_Status=" + pqr_Status + ", pqr_Mno=" + pqr_Mno + ", pqr_bNo="
				+ pqr_bNo + "]";
	}
	
	
	

}
