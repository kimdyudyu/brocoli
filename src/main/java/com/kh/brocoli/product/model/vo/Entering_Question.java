package com.kh.brocoli.product.model.vo;

public class Entering_Question {
		private int ent_NO;
		private String ent_Business_NO;
		private String ent_Bname;
		private String ent_Url;
		private String ent_ID;
		private String ent_Phone;
		private String ent_Mail;
		private String ent_Comment;
		private String ent_Status;
		
		public Entering_Question() {
			super();
		}

		public Entering_Question(int ent_NO, String ent_Business_NO, String ent_Bname, String ent_Url, String ent_ID,
				String ent_Phone, String ent_Mail, String ent_Comment, String ent_Status) {
			super();
			this.ent_NO = ent_NO;
			this.ent_Business_NO = ent_Business_NO;
			this.ent_Bname = ent_Bname;
			this.ent_Url = ent_Url;
			this.ent_ID = ent_ID;
			this.ent_Phone = ent_Phone;
			this.ent_Mail = ent_Mail;
			this.ent_Comment = ent_Comment;
			this.ent_Status = ent_Status;
		}

		public int getEnt_NO() {
			return ent_NO;
		}

		public void setEnt_NO(int ent_NO) {
			this.ent_NO = ent_NO;
		}

		public String getEnt_Business_NO() {
			return ent_Business_NO;
		}

		public void setEnt_Business_NO(String ent_Business_NO) {
			this.ent_Business_NO = ent_Business_NO;
		}

		public String getEnt_Bname() {
			return ent_Bname;
		}

		public void setEnt_Bname(String ent_Bname) {
			this.ent_Bname = ent_Bname;
		}

		public String getEnt_Url() {
			return ent_Url;
		}

		public void setEnt_Url(String ent_Url) {
			this.ent_Url = ent_Url;
		}

		public String getEnt_ID() {
			return ent_ID;
		}

		public void setEnt_ID(String ent_ID) {
			this.ent_ID = ent_ID;
		}

		public String getEnt_Phone() {
			return ent_Phone;
		}

		public void setEnt_Phone(String ent_Phone) {
			this.ent_Phone = ent_Phone;
		}

		public String getEnt_Mail() {
			return ent_Mail;
		}

		public void setEnt_Mail(String ent_Mail) {
			this.ent_Mail = ent_Mail;
		}

		public String getEnt_Comment() {
			return ent_Comment;
		}

		public void setEnt_Comment(String ent_Comment) {
			this.ent_Comment = ent_Comment;
		}

		public String getEnt_Status() {
			return ent_Status;
		}

		public void setEnt_Status(String ent_Status) {
			this.ent_Status = ent_Status;
		}

		@Override
		public String toString() {
			return "Entering_Question [ent_NO=" + ent_NO + ", ent_Business_NO=" + ent_Business_NO + ", ent_Bname="
					+ ent_Bname + ", ent_Url=" + ent_Url + ", ent_ID=" + ent_ID + ", ent_Phone=" + ent_Phone
					+ ", ent_Mail=" + ent_Mail + ", ent_Comment=" + ent_Comment + ", ent_Status=" + ent_Status + "]";
		}
		
		
		

}
