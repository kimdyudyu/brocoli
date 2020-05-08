package com.kh.brocoli.owner.vo;

public class ownerAge {
	
	private int aNO;
	private int bNO;
	private int age10;
	private int age15;
	private int age20;
	private int age25;
	private int age30;
	private int age35;
	private int age40;
	private int age45;
	private int age50;
	
	public ownerAge() {
		super();
	}

	public ownerAge(int aNO, int bNO, int age10, int age15, int age20, int age25, int age30, int age35, int age40,
			int age45, int age50) {
		super();
		this.aNO = aNO;
		this.bNO = bNO;
		this.age10 = age10;
		this.age15 = age15;
		this.age20 = age20;
		this.age25 = age25;
		this.age30 = age30;
		this.age35 = age35;
		this.age40 = age40;
		this.age45 = age45;
		this.age50 = age50;
	}

	public int getaNO() {
		return aNO;
	}

	public void setaNO(int aNO) {
		this.aNO = aNO;
	}

	public int getbNO() {
		return bNO;
	}

	public void setbNO(int bNO) {
		this.bNO = bNO;
	}

	public int getAge10() {
		return age10;
	}

	public void setAge10(int age10) {
		this.age10 = age10;
	}

	public int getAge15() {
		return age15;
	}

	public void setAge15(int age15) {
		this.age15 = age15;
	}

	public int getAge20() {
		return age20;
	}

	public void setAge20(int age20) {
		this.age20 = age20;
	}

	public int getAge25() {
		return age25;
	}

	public void setAge25(int age25) {
		this.age25 = age25;
	}

	public int getAge30() {
		return age30;
	}

	public void setAge30(int age30) {
		this.age30 = age30;
	}

	public int getAge35() {
		return age35;
	}

	public void setAge35(int age35) {
		this.age35 = age35;
	}

	public int getAge40() {
		return age40;
	}

	public void setAge40(int age40) {
		this.age40 = age40;
	}

	public int getAge45() {
		return age45;
	}

	public void setAge45(int age45) {
		this.age45 = age45;
	}

	public int getAge50() {
		return age50;
	}

	public void setAge50(int age50) {
		this.age50 = age50;
	}

	@Override
	public String toString() {
		return "ownerData [aNO=" + aNO + ", bNO=" + bNO + ", age10=" + age10 + ", age15=" + age15 + ", age20=" + age20
				+ ", age25=" + age25 + ", age30=" + age30 + ", age35=" + age35 + ", age40=" + age40 + ", age45=" + age45
				+ ", age50=" + age50 + "]";
	}
	
	
	
}
