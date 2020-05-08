package com.kh.brocoli.general.model.vo;

import java.sql.Date;

public class Auction {
		
		private int ac_No;
		private String ac_Banner_NO;
		private String ac_ID;
		private String ac_Price;
		private Date ac_Date;
		private String ac_Status;
		private String ac_Brand;
		private String ac_Comment;
		private String ac_Img;
		private String ac_Img_Rename;
		private int ac_Brand_NO;
		
		public Auction() {
			super();
		}

		public Auction(int ac_No, String ac_Banner_NO, String ac_ID, String ac_Price, Date ac_Date, String ac_Status,
				String ac_Brand, String ac_Comment, String ac_Img, String ac_Img_Rename, int ac_Brand_NO) {
			super();
			this.ac_No = ac_No;
			this.ac_Banner_NO = ac_Banner_NO;
			this.ac_ID = ac_ID;
			this.ac_Price = ac_Price;
			this.ac_Date = ac_Date;
			this.ac_Status = ac_Status;
			this.ac_Brand = ac_Brand;
			this.ac_Comment = ac_Comment;
			this.ac_Img = ac_Img;
			this.ac_Img_Rename = ac_Img_Rename;
			this.ac_Brand_NO = ac_Brand_NO;
		}

		public int getAc_No() {
			return ac_No;
		}

		public void setAc_No(int ac_No) {
			this.ac_No = ac_No;
		}

		public String getAc_Banner_NO() {
			return ac_Banner_NO;
		}

		public void setAc_Banner_NO(String ac_Banner_NO) {
			this.ac_Banner_NO = ac_Banner_NO;
		}

		public String getAc_ID() {
			return ac_ID;
		}

		public void setAc_ID(String ac_ID) {
			this.ac_ID = ac_ID;
		}

		public String getAc_Price() {
			return ac_Price;
		}

		public void setAc_Price(String ac_Price) {
			this.ac_Price = ac_Price;
		}

		public Date getAc_Date() {
			return ac_Date;
		}

		public void setAc_Date(Date ac_Date) {
			this.ac_Date = ac_Date;
		}

		public String getAc_Status() {
			return ac_Status;
		}

		public void setAc_Status(String ac_Status) {
			this.ac_Status = ac_Status;
		}

		public String getAc_Brand() {
			return ac_Brand;
		}

		public void setAc_Brand(String ac_Brand) {
			this.ac_Brand = ac_Brand;
		}

		public String getAc_Comment() {
			return ac_Comment;
		}

		public void setAc_Comment(String ac_Comment) {
			this.ac_Comment = ac_Comment;
		}

		public String getAc_Img() {
			return ac_Img;
		}

		public void setAc_Img(String ac_Img) {
			this.ac_Img = ac_Img;
		}

		public String getAc_Img_Rename() {
			return ac_Img_Rename;
		}

		public void setAc_Img_Rename(String ac_Img_Rename) {
			this.ac_Img_Rename = ac_Img_Rename;
		}

		public int getAc_Brand_NO() {
			return ac_Brand_NO;
		}

		public void setAc_Brand_NO(int ac_Brand_NO) {
			this.ac_Brand_NO = ac_Brand_NO;
		}

		@Override
		public String toString() {
			return "Auction [ac_No=" + ac_No + ", ac_Banner_NO=" + ac_Banner_NO + ", ac_ID=" + ac_ID + ", ac_Price="
					+ ac_Price + ", ac_Date=" + ac_Date + ", ac_Status=" + ac_Status + ", ac_Brand=" + ac_Brand
					+ ", ac_Comment=" + ac_Comment + ", ac_Img=" + ac_Img + ", ac_Img_Rename=" + ac_Img_Rename
					+ ", ac_Brand_NO=" + ac_Brand_NO + "]";
		}

		
}
