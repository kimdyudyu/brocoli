package com.kh.brocoli.member.model.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import com.kh.brocoli.member.model.vo.Orders;
import com.kh.brocoli.product.model.vo.Brand;
import com.kh.brocoli.product.model.vo.Product;
import com.kh.brocoli.product.model.vo.Product_Option;

@Component
public class Member {
	private int mNO;
	private String mId;
	private String pwd;
	private String mName;
	private String email;
	private String phone;
	private String address;
	private String gender;
	private String birthDay;
	private String mGrant;
	private String mPoint;
	private int order_Count;
	private String order_Price;
	private String report_YN;
	private String block_YN;
	private String block_Content;
	private String del_Flag_YN;
	private Date del_Date;
	private Date enrollDate;
	private String brand;
	private String brand_NO;
	
	
	private Product pList;
	private Product_Option pOptionlist;
	private Brand blist;
	
	
	public Member() {
		super();
	}


	public Member(int mNO, String mId, String pwd, String mName, String email, String phone, String address,
			String gender, String birthDay, String mGrant, String mPoint, int order_Count, String order_Price,
			String report_YN, String block_YN, String block_Content, String del_Flag_YN, Date del_Date, Date enrollDate,
			String brand, String brand_NO, Product pList, Product_Option pOptionlist, Brand blist) {
		super();
		this.mNO = mNO;
		this.mId = mId;
		this.pwd = pwd;
		this.mName = mName;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.gender = gender;
		this.birthDay = birthDay;
		this.mGrant = mGrant;
		this.mPoint = mPoint;
		this.order_Count = order_Count;
		this.order_Price = order_Price;
		this.report_YN = report_YN;
		this.block_YN = block_YN;
		this.block_Content = block_Content;
		this.del_Flag_YN = del_Flag_YN;
		this.del_Date = del_Date;
		this.enrollDate = enrollDate;
		this.brand = brand;
		this.brand_NO = brand_NO;
		this.pList = pList;
		this.pOptionlist = pOptionlist;
		this.blist = blist;
	}


	public int getmNO() {
		return mNO;
	}


	public void setmNO(int mNO) {
		this.mNO = mNO;
	}


	public String getmId() {
		return mId;
	}


	public void setmId(String mId) {
		this.mId = mId;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getmName() {
		return mName;
	}


	public void setmName(String mName) {
		this.mName = mName;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getBirthDay() {
		return birthDay;
	}


	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}


	public String getmGrant() {
		return mGrant;
	}


	public void setmGrant(String mGrant) {
		this.mGrant = mGrant;
	}


	public String getmPoint() {
		return mPoint;
	}


	public void setmPoint(String mPoint) {
		this.mPoint = mPoint;
	}


	public int getOrder_Count() {
		return order_Count;
	}


	public void setOrder_Count(int order_Count) {
		this.order_Count = order_Count;
	}


	public String getOrder_Price() {
		return order_Price;
	}


	public void setOrder_Price(String order_Price) {
		this.order_Price = order_Price;
	}


	public String getReport_YN() {
		return report_YN;
	}


	public void setReport_YN(String report_YN) {
		this.report_YN = report_YN;
	}


	public String getBlock_YN() {
		return block_YN;
	}


	public void setBlock_YN(String block_YN) {
		this.block_YN = block_YN;
	}


	public String getBlock_Content() {
		return block_Content;
	}


	public void setBlock_Content(String block_Content) {
		this.block_Content = block_Content;
	}


	public String getDel_Flag_YN() {
		return del_Flag_YN;
	}


	public void setDel_Flag_YN(String del_Flag_YN) {
		this.del_Flag_YN = del_Flag_YN;
	}


	public Date getDel_Date() {
		return del_Date;
	}


	public void setDel_Date(Date del_Date) {
		this.del_Date = del_Date;
	}


	public Date getEnrollDate() {
		return enrollDate;
	}


	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}


	public String getBrand() {
		return brand;
	}


	public void setBrand(String brand) {
		this.brand = brand;
	}


	public String getBrand_NO() {
		return brand_NO;
	}


	public void setBrand_NO(String brand_NO) {
		this.brand_NO = brand_NO;
	}


	public Product getpList() {
		return pList;
	}


	public void setpList(Product pList) {
		this.pList = pList;
	}


	public Product_Option getpOptionlist() {
		return pOptionlist;
	}


	public void setpOptionlist(Product_Option pOptionlist) {
		this.pOptionlist = pOptionlist;
	}


	public Brand getBlist() {
		return blist;
	}


	public void setBlist(Brand blist) {
		this.blist = blist;
	}


	@Override
	public String toString() {
		return "Member [mNO=" + mNO + ", mId=" + mId + ", pwd=" + pwd + ", mName=" + mName + ", email=" + email
				+ ", phone=" + phone + ", address=" + address + ", gender=" + gender + ", birthDay=" + birthDay
				+ ", mGrant=" + mGrant + ", mPoint=" + mPoint + ", order_Count=" + order_Count + ", order_Price="
				+ order_Price + ", report_YN=" + report_YN + ", block_YN=" + block_YN + ", block_Content="
				+ block_Content + ", del_Flag_YN=" + del_Flag_YN + ", del_Date=" + del_Date + ", enrollDate="
				+ enrollDate + ", brand=" + brand + ", brand_NO=" + brand_NO + ", pList=" + pList + ", pOptionlist="
				+ pOptionlist + ", blist=" + blist + "]";
	}

	
	
	
	
	
}


   