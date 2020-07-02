package com.franchaining.vo;

public class BranchVO {
	
	private int b_no;
	private String b_name;
	private int b_phone1;
	private int b_phone2;
	private int b_phone3;
	
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public int getB_phone1() {
		return b_phone1;
	}
	public void setB_phone1(int b_phone1) {
		this.b_phone1 = b_phone1;
	}
	public int getB_phone2() {
		return b_phone2;
	}
	public void setB_phone2(int b_phone2) {
		this.b_phone2 = b_phone2;
	}
	public int getB_phone3() {
		return b_phone3;
	}
	public void setB_phone3(int b_phone3) {
		this.b_phone3 = b_phone3;
	}
	
	@Override
	public String toString() {
		return "BranchVO [b_no=" + b_no + ", b_name=" + b_name + ", b_phone1=" + b_phone1 + ", b_phone2=" + b_phone2
				+ ", b_phone3=" + b_phone3 + "]";
	}

}
