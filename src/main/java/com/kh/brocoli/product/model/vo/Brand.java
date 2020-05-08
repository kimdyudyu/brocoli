package com.kh.brocoli.product.model.vo;

import java.sql.Date;
import java.util.ArrayList;

public class Brand {
		private int brand_NO;
		private String b_Name;
		private String b_Logo;
		private String b_Logo_ReName;
		private String b_Business_NO;
		private String b_Status;
		private Date b_Enter_Date;
		private Date b_Close_Date;
		private String b_Close_Content;
		private String b_Modify_ID;
		private Date b_Modify_Date;
		private String b_Owner1_ID;
		private String b_Owner2_ID;
		private String b_Owner3_ID;
		private String b_Phone;
		private String b_Address;
		private String b_Owner_Name;
		private String b_Comment;
		private String b_Email1;
		private String b_Email2;
		private String b_Email3;
		
		private Product pfList;
		
		public Brand() {
			super();
		}

		public Brand(int brand_NO, String b_Name, String b_Logo, String b_Logo_ReName, String b_Business_NO,
				String b_Status, Date b_Enter_Date, Date b_Close_Date, String b_Close_Content, String b_Modify_ID,
				Date b_Modify_Date, String b_Owner1_ID, String b_Owner2_ID, String b_Owner3_ID, String b_Phone,
				String b_Address, String b_Owner_Name, String b_Comment, String b_Email1, String b_Email2,
				String b_Email3, Product pfList) {
			super();
			this.brand_NO = brand_NO;
			this.b_Name = b_Name;
			this.b_Logo = b_Logo;
			this.b_Logo_ReName = b_Logo_ReName;
			this.b_Business_NO = b_Business_NO;
			this.b_Status = b_Status;
			this.b_Enter_Date = b_Enter_Date;
			this.b_Close_Date = b_Close_Date;
			this.b_Close_Content = b_Close_Content;
			this.b_Modify_ID = b_Modify_ID;
			this.b_Modify_Date = b_Modify_Date;
			this.b_Owner1_ID = b_Owner1_ID;
			this.b_Owner2_ID = b_Owner2_ID;
			this.b_Owner3_ID = b_Owner3_ID;
			this.b_Phone = b_Phone;
			this.b_Address = b_Address;
			this.b_Owner_Name = b_Owner_Name;
			this.b_Comment = b_Comment;
			this.b_Email1 = b_Email1;
			this.b_Email2 = b_Email2;
			this.b_Email3 = b_Email3;
			this.pfList = pfList;
		}

		public int getBrand_NO() {
			return brand_NO;
		}

		public void setBrand_NO(int brand_NO) {
			this.brand_NO = brand_NO;
		}

		public String getB_Name() {
			return b_Name;
		}

		public void setB_Name(String b_Name) {
			this.b_Name = b_Name;
		}

		public String getB_Logo() {
			return b_Logo;
		}

		public void setB_Logo(String b_Logo) {
			this.b_Logo = b_Logo;
		}

		public String getB_Logo_ReName() {
			return b_Logo_ReName;
		}

		public void setB_Logo_ReName(String b_Logo_ReName) {
			this.b_Logo_ReName = b_Logo_ReName;
		}

		public String getB_Business_NO() {
			return b_Business_NO;
		}

		public void setB_Business_NO(String b_Business_NO) {
			this.b_Business_NO = b_Business_NO;
		}

		public String getB_Status() {
			return b_Status;
		}

		public void setB_Status(String b_Status) {
			this.b_Status = b_Status;
		}

		public Date getB_Enter_Date() {
			return b_Enter_Date;
		}

		public void setB_Enter_Date(Date b_Enter_Date) {
			this.b_Enter_Date = b_Enter_Date;
		}

		public Date getB_Close_Date() {
			return b_Close_Date;
		}

		public void setB_Close_Date(Date b_Close_Date) {
			this.b_Close_Date = b_Close_Date;
		}

		public String getB_Close_Content() {
			return b_Close_Content;
		}

		public void setB_Close_Content(String b_Close_Content) {
			this.b_Close_Content = b_Close_Content;
		}

		public String getB_Modify_ID() {
			return b_Modify_ID;
		}

		public void setB_Modify_ID(String b_Modify_ID) {
			this.b_Modify_ID = b_Modify_ID;
		}

		public Date getB_Modify_Date() {
			return b_Modify_Date;
		}

		public void setB_Modify_Date(Date b_Modify_Date) {
			this.b_Modify_Date = b_Modify_Date;
		}

		public String getB_Owner1_ID() {
			return b_Owner1_ID;
		}

		public void setB_Owner1_ID(String b_Owner1_ID) {
			this.b_Owner1_ID = b_Owner1_ID;
		}

		public String getB_Owner2_ID() {
			return b_Owner2_ID;
		}

		public void setB_Owner2_ID(String b_Owner2_ID) {
			this.b_Owner2_ID = b_Owner2_ID;
		}

		public String getB_Owner3_ID() {
			return b_Owner3_ID;
		}

		public void setB_Owner3_ID(String b_Owner3_ID) {
			this.b_Owner3_ID = b_Owner3_ID;
		}

		public String getB_Phone() {
			return b_Phone;
		}

		public void setB_Phone(String b_Phone) {
			this.b_Phone = b_Phone;
		}

		public String getB_Address() {
			return b_Address;
		}

		public void setB_Address(String b_Address) {
			this.b_Address = b_Address;
		}

		public String getB_Owner_Name() {
			return b_Owner_Name;
		}

		public void setB_Owner_Name(String b_Owner_Name) {
			this.b_Owner_Name = b_Owner_Name;
		}

		public String getB_Comment() {
			return b_Comment;
		}

		public void setB_Comment(String b_Comment) {
			this.b_Comment = b_Comment;
		}

		public String getB_Email1() {
			return b_Email1;
		}

		public void setB_Email1(String b_Email1) {
			this.b_Email1 = b_Email1;
		}

		public String getB_Email2() {
			return b_Email2;
		}

		public void setB_Email2(String b_Email2) {
			this.b_Email2 = b_Email2;
		}

		public String getB_Email3() {
			return b_Email3;
		}

		public void setB_Email3(String b_Email3) {
			this.b_Email3 = b_Email3;
		}

		public Product getPfList() {
			return pfList;
		}

		public void setPfList(Product pfList) {
			this.pfList = pfList;
		}

		@Override
		public String toString() {
			return "Brand [brand_NO=" + brand_NO + ", b_Name=" + b_Name + ", b_Logo=" + b_Logo + ", b_Logo_ReName="
					+ b_Logo_ReName + ", b_Business_NO=" + b_Business_NO + ", b_Status=" + b_Status + ", b_Enter_Date="
					+ b_Enter_Date + ", b_Close_Date=" + b_Close_Date + ", b_Close_Content=" + b_Close_Content
					+ ", b_Modify_ID=" + b_Modify_ID + ", b_Modify_Date=" + b_Modify_Date + ", b_Owner1_ID="
					+ b_Owner1_ID + ", b_Owner2_ID=" + b_Owner2_ID + ", b_Owner3_ID=" + b_Owner3_ID + ", b_Phone="
					+ b_Phone + ", b_Address=" + b_Address + ", b_Owner_Name=" + b_Owner_Name + ", b_Comment="
					+ b_Comment + ", b_Email1=" + b_Email1 + ", b_Email2=" + b_Email2 + ", b_Email3=" + b_Email3
					+ ", pfList=" + pfList + "]";
		}

		
}
