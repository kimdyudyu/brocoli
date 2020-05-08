package com.kh.brocoli.owner.vo;

public class ownerCategore {
	
	private int cateNO;
	private String top;
	private String outer;
	private String dress;
	private String pants;
	private String skirt;
	private String bag;
	private String other;
	
	public ownerCategore() {
		super();
	}

	public ownerCategore(int cateNO, String top, String outer, String dress, String pants, String skirt, String bag,
			String other) {
		super();
		this.cateNO = cateNO;
		this.top = top;
		this.outer = outer;
		this.dress = dress;
		this.pants = pants;
		this.skirt = skirt;
		this.bag = bag;
		this.other = other;
	}

	public int getCateNO() {
		return cateNO;
	}

	public void setCateNO(int cateNO) {
		this.cateNO = cateNO;
	}

	public String getTop() {
		return top;
	}

	public void setTop(String top) {
		this.top = top;
	}

	public String getOuter() {
		return outer;
	}

	public void setOuter(String outer) {
		this.outer = outer;
	}

	public String getDress() {
		return dress;
	}

	public void setDress(String dress) {
		this.dress = dress;
	}

	public String getPants() {
		return pants;
	}

	public void setPants(String pants) {
		this.pants = pants;
	}

	public String getSkirt() {
		return skirt;
	}

	public void setSkirt(String skirt) {
		this.skirt = skirt;
	}

	public String getBag() {
		return bag;
	}

	public void setBag(String bag) {
		this.bag = bag;
	}

	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}

	@Override
	public String toString() {
		return "ownerCategore [cateNO=" + cateNO + ", top=" + top + ", outer=" + outer + ", dress=" + dress + ", pants="
				+ pants + ", skirt=" + skirt + ", bag=" + bag + ", other=" + other + "]";
	}
	
	
	
	
	
	
}
