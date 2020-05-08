package com.kh.brocoli.product.model.vo;

public class Statistics {
	
	private int NO;
	private String day;
	private String orderCount;
	private String orderPrice;
	private String rejectCount;
	private String rejectPrice;
	private String changeCount;
	private String changePrice;
	
	public Statistics() {
		super();
	}

	public Statistics(int nO, String day, String orderCount, String orderPrice, String rejectCount, String rejectPrice,
			String changeCount, String changePrice) {
		super();
		NO = nO;
		this.day = day;
		this.orderCount = orderCount;
		this.orderPrice = orderPrice;
		this.rejectCount = rejectCount;
		this.rejectPrice = rejectPrice;
		this.changeCount = changeCount;
		this.changePrice = changePrice;
	}

	public int getNO() {
		return NO;
	}

	public void setNO(int nO) {
		NO = nO;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}

	public String getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(String orderCount) {
		this.orderCount = orderCount;
	}

	public String getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(String orderPrice) {
		this.orderPrice = orderPrice;
	}

	public String getRejectCount() {
		return rejectCount;
	}

	public void setRejectCount(String rejectCount) {
		this.rejectCount = rejectCount;
	}

	public String getRejectPrice() {
		return rejectPrice;
	}

	public void setRejectPrice(String rejectPrice) {
		this.rejectPrice = rejectPrice;
	}

	public String getChangeCount() {
		return changeCount;
	}

	public void setChangeCount(String changeCount) {
		this.changeCount = changeCount;
	}

	public String getChangePrice() {
		return changePrice;
	}

	public void setChangePrice(String changePrice) {
		this.changePrice = changePrice;
	}

	@Override
	public String toString() {
		return "Statistics [NO=" + NO + ", day=" + day + ", orderCount=" + orderCount + ", orderPrice=" + orderPrice
				+ ", rejectCount=" + rejectCount + ", rejectPrice=" + rejectPrice + ", changeCount=" + changeCount
				+ ", changePrice=" + changePrice + "]";
	}

	
	
	
	
}
