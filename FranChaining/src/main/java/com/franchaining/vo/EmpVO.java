package com.franchaining.vo;

import java.sql.Date;

public class EmpVO {
	
	private int e_no;
	private int p_no;
	private int b_no;
	private String e_name;
	private int phone1;
	private int phone2;
	private int phone3;
	private int sal;
	private Date hire;

	public int getE_no() {
		return e_no;
	}
	public void setE_no(int e_no) {
		this.e_no = e_no;
	}
	public int getP_no() {
		return p_no;
	}
	public void setP_no(int p_no) {
		this.p_no = p_no;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public String getE_name() {
		return e_name;
	}
	public void setE_name(String e_name) {
		this.e_name = e_name;
	}
	public int getPhone1() {
		return phone1;
	}
	public void setPhone1(int phone1) {
		this.phone1 = phone1;
	}
	public int getPhone2() {
		return phone2;
	}
	public void setPhone2(int phone2) {
		this.phone2 = phone2;
	}
	public int getPhone3() {
		return phone3;
	}
	public void setPhone3(int phone3) {
		this.phone3 = phone3;
	}
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	public Date getHire() {
		return hire;
	}
	public void setHire(Date hire) {
		this.hire = hire;
	}
	
	@Override
	public String toString() {
		return "EmpVO [e_no=" + e_no + ", p_no=" + p_no + ", b_no=" + b_no + ", e_name=" + e_name + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + ", sal=" + sal + ", hire=" + hire + "]";
	}
	
}
