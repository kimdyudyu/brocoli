package com.kh.brocoli.member.model.vo;

import java.sql.Date;

import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_Option;

public class trackOrders {
	 private int or_NO;
	 private Date or_Date;
	 private String or_Pname;
	 private String or_Option1;
	 private String or_Option2;
	 private String or_Amount;
	 private String or_Address;
	 private String or_Message;
	 private String or_Price;
	 private String or_Status;
	 private String or_Deliver_Num;
	 private String or_Deliver_Vender;
	 private int or_Mno;
	 private String or_Recip_Name;
	 private String or_Phone;
	 private int or_P_NO;
	 private int or_Brand_NO;
	public trackOrders() {
		super();
	}
	public trackOrders(int or_NO, Date or_Date, String or_Pname, String or_Option1, String or_Option2, String or_Amount,
			String or_Address, String or_Message, String or_Price, String or_Status, String or_Deliver_Num,
			String or_Deliver_Vender, int or_Mno, String or_Recip_Name, String or_Phone, int or_P_NO, int or_Brand_NO) {
		super();
		this.or_NO = or_NO;
		this.or_Date = or_Date;
		this.or_Pname = or_Pname;
		this.or_Option1 = or_Option1;
		this.or_Option2 = or_Option2;
		this.or_Amount = or_Amount;
		this.or_Address = or_Address;
		this.or_Message = or_Message;
		this.or_Price = or_Price;
		this.or_Status = or_Status;
		this.or_Deliver_Num = or_Deliver_Num;
		this.or_Deliver_Vender = or_Deliver_Vender;
		this.or_Mno = or_Mno;
		this.or_Recip_Name = or_Recip_Name;
		this.or_Phone = or_Phone;
		this.or_P_NO = or_P_NO;
		this.or_Brand_NO = or_Brand_NO;
	}
	public int getOr_NO() {
		return or_NO;
	}
	public void setOr_NO(int or_NO) {
		this.or_NO = or_NO;
	}
	public Date getOr_Date() {
		return or_Date;
	}
	public void setOr_Date(Date or_Date) {
		this.or_Date = or_Date;
	}
	public String getOr_Pname() {
		return or_Pname;
	}
	public void setOr_Pname(String or_Pname) {
		this.or_Pname = or_Pname;
	}
	public String getOr_Option1() {
		return or_Option1;
	}
	public void setOr_Option1(String or_Option1) {
		this.or_Option1 = or_Option1;
	}
	public String getOr_Option2() {
		return or_Option2;
	}
	public void setOr_Option2(String or_Option2) {
		this.or_Option2 = or_Option2;
	}
	public String getOr_Amount() {
		return or_Amount;
	}
	public void setOr_Amount(String or_Amount) {
		this.or_Amount = or_Amount;
	}
	public String getOr_Address() {
		return or_Address;
	}
	public void setOr_Address(String or_Address) {
		this.or_Address = or_Address;
	}
	public String getOr_Message() {
		return or_Message;
	}
	public void setOr_Message(String or_Message) {
		this.or_Message = or_Message;
	}
	public String getOr_Price() {
		return or_Price;
	}
	public void setOr_Price(String or_Price) {
		this.or_Price = or_Price;
	}
	public String getOr_Status() {
		return or_Status;
	}
	public void setOr_Status(String or_Status) {
		this.or_Status = or_Status;
	}
	public String getOr_Deliver_Num() {
		return or_Deliver_Num;
	}
	public void setOr_Deliver_Num(String or_Deliver_Num) {
		this.or_Deliver_Num = or_Deliver_Num;
	}
	public String getOr_Deliver_Vender() {
		return or_Deliver_Vender;
	}
	public void setOr_Deliver_Vender(String or_Deliver_Vender) {
		this.or_Deliver_Vender = or_Deliver_Vender;
	}
	public int getOr_Mno() {
		return or_Mno;
	}
	public void setOr_Mno(int or_Mno) {
		this.or_Mno = or_Mno;
	}
	public String getOr_Recip_Name() {
		return or_Recip_Name;
	}
	public void setOr_Recip_Name(String or_Recip_Name) {
		this.or_Recip_Name = or_Recip_Name;
	}
	public String getOr_Phone() {
		return or_Phone;
	}
	public void setOr_Phone(String or_Phone) {
		this.or_Phone = or_Phone;
	}
	public int getOr_P_NO() {
		return or_P_NO;
	}
	public void setOr_P_NO(int or_P_NO) {
		this.or_P_NO = or_P_NO;
	}
	public int getOr_Brand_NO() {
		return or_Brand_NO;
	}
	public void setOr_Brand_NO(int or_Brand_NO) {
		this.or_Brand_NO = or_Brand_NO;
	}
	@Override
	public String toString() {
		return "trackOrders [or_NO=" + or_NO + ", or_Date=" + or_Date + ", or_Pname=" + or_Pname + ", or_Option1="
				+ or_Option1 + ", or_Option2=" + or_Option2 + ", or_Amount=" + or_Amount + ", or_Address=" + or_Address
				+ ", or_Message=" + or_Message + ", or_Price=" + or_Price + ", or_Status=" + or_Status
				+ ", or_Deliver_Num=" + or_Deliver_Num + ", or_Deliver_Vender=" + or_Deliver_Vender + ", or_Mno="
				+ or_Mno + ", or_Recip_Name=" + or_Recip_Name + ", or_Phone=" + or_Phone + ", or_P_NO=" + or_P_NO
				+ ", or_Brand_NO=" + or_Brand_NO + "]";
	}
	
	
	 
	 

	
	
}
