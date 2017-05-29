package kosta.travel.domain;

import java.io.Serializable;

public class Carpool_RequestVO implements Serializable {
	
	private int cr_num;
	private String cr_ox;
	private String c_num;
	private String u_id;
	
	public Carpool_RequestVO(){}
	public Carpool_RequestVO(int cr_num, String cr_ox, String c_num, String u_id) {
		super();
		this.cr_num = cr_num;
		this.cr_ox = cr_ox;
		this.c_num = c_num;
		this.u_id = u_id;
	}
	public int getCr_num() {
		return cr_num;
	}
	public void setCr_num(int cr_num) {
		this.cr_num = cr_num;
	}
	public String getCr_ox() {
		return cr_ox;
	}
	public void setCr_ox(String cr_ox) {
		this.cr_ox = cr_ox;
	}
	public String getC_num() {
		return c_num;
	}
	public void setC_num(String c_num) {
		this.c_num = c_num;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	
	
	
	
	

}
