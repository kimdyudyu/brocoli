package com.kh.brocoli.magazine.model.vo;

import java.sql.Date;

public class Magazine_File {
	   private int mf_NO;
	   private String mf_Img1;
	   private String mf_Img1_ReName;
	   private String mf_Img2;
	   private String mf_Img2_ReName;
	   private String mf_Img3;
	   private String mf_Img3_ReName;
	   private String mf_Img4;
	   private String mf_Img4_ReName;
	   private String mf_Img5;
	   private String mf_Img5_ReName;
	   private String mf_Img6;
	   private String mf_Img6_ReName;
	   private int mf_M_NO;
	   
	public Magazine_File() {
		super();
	}

	public Magazine_File(int mf_NO, String mf_Img1, String mf_Img1_ReName, String mf_Img2, String mf_Img2_ReName,
			String mf_Img3, String mf_Img3_ReName, String mf_Img4, String mf_Img4_ReName, String mf_Img5,
			String mf_Img5_ReName, String mf_Img6, String mf_Img6_ReName, int mf_M_NO) {
		super();
		this.mf_NO = mf_NO;
		this.mf_Img1 = mf_Img1;
		this.mf_Img1_ReName = mf_Img1_ReName;
		this.mf_Img2 = mf_Img2;
		this.mf_Img2_ReName = mf_Img2_ReName;
		this.mf_Img3 = mf_Img3;
		this.mf_Img3_ReName = mf_Img3_ReName;
		this.mf_Img4 = mf_Img4;
		this.mf_Img4_ReName = mf_Img4_ReName;
		this.mf_Img5 = mf_Img5;
		this.mf_Img5_ReName = mf_Img5_ReName;
		this.mf_Img6 = mf_Img6;
		this.mf_Img6_ReName = mf_Img6_ReName;
		this.mf_M_NO = mf_M_NO;
	}

	public int getMf_NO() {
		return mf_NO;
	}

	public void setMf_NO(int mf_NO) {
		this.mf_NO = mf_NO;
	}

	public String getMf_Img1() {
		return mf_Img1;
	}

	public void setMf_Img1(String mf_Img1) {
		this.mf_Img1 = mf_Img1;
	}

	public String getMf_Img1_ReName() {
		return mf_Img1_ReName;
	}

	public void setMf_Img1_ReName(String mf_Img1_ReName) {
		this.mf_Img1_ReName = mf_Img1_ReName;
	}

	public String getMf_Img2() {
		return mf_Img2;
	}

	public void setMf_Img2(String mf_Img2) {
		this.mf_Img2 = mf_Img2;
	}

	public String getMf_Img2_ReName() {
		return mf_Img2_ReName;
	}

	public void setMf_Img2_ReName(String mf_Img2_ReName) {
		this.mf_Img2_ReName = mf_Img2_ReName;
	}

	public String getMf_Img3() {
		return mf_Img3;
	}

	public void setMf_Img3(String mf_Img3) {
		this.mf_Img3 = mf_Img3;
	}

	public String getMf_Img3_ReName() {
		return mf_Img3_ReName;
	}

	public void setMf_Img3_ReName(String mf_Img3_ReName) {
		this.mf_Img3_ReName = mf_Img3_ReName;
	}

	public String getMf_Img4() {
		return mf_Img4;
	}

	public void setMf_Img4(String mf_Img4) {
		this.mf_Img4 = mf_Img4;
	}

	public String getMf_Img4_ReName() {
		return mf_Img4_ReName;
	}

	public void setMf_Img4_ReName(String mf_Img4_ReName) {
		this.mf_Img4_ReName = mf_Img4_ReName;
	}

	public String getMf_Img5() {
		return mf_Img5;
	}

	public void setMf_Img5(String mf_Img5) {
		this.mf_Img5 = mf_Img5;
	}

	public String getMf_Img5_ReName() {
		return mf_Img5_ReName;
	}

	public void setMf_Img5_ReName(String mf_Img5_ReName) {
		this.mf_Img5_ReName = mf_Img5_ReName;
	}

	public String getMf_Img6() {
		return mf_Img6;
	}

	public void setMf_Img6(String mf_Img6) {
		this.mf_Img6 = mf_Img6;
	}

	public String getMf_Img6_ReName() {
		return mf_Img6_ReName;
	}

	public void setMf_Img6_ReName(String mf_Img6_ReName) {
		this.mf_Img6_ReName = mf_Img6_ReName;
	}

	public int getMf_M_NO() {
		return mf_M_NO;
	}

	public void setMf_M_NO(int mf_M_NO) {
		this.mf_M_NO = mf_M_NO;
	}

	@Override
	public String toString() {
		return "Magazine_File [mf_NO=" + mf_NO + ", mf_Img1=" + mf_Img1 + ", mf_Img1_ReName=" + mf_Img1_ReName
				+ ", mf_Img2=" + mf_Img2 + ", mf_Img2_ReName=" + mf_Img2_ReName + ", mf_Img3=" + mf_Img3
				+ ", mf_Img3_ReName=" + mf_Img3_ReName + ", mf_Img4=" + mf_Img4 + ", mf_Img4_ReName=" + mf_Img4_ReName
				+ ", mf_Img5=" + mf_Img5 + ", mf_Img5_ReName=" + mf_Img5_ReName + ", mf_Img6=" + mf_Img6
				+ ", mf_Img6_ReName=" + mf_Img6_ReName + ", mf_M_NO=" + mf_M_NO + "]";
	}
	
}
