package kosta.travel.domain;

import java.io.Serializable;

public class Product_RequestVO implements Serializable{
	
	private String pr_reqnum;
	private String u_id;
	private String p_num;
	private String pr_ox;
	private String pr_place;
	private String pr_date;
	
	public Product_RequestVO(){}

	public Product_RequestVO(String pr_reqnum, String u_id, String p_num, String pr_ox, String pr_place, String pr_date) {
		super();
		this.pr_reqnum = pr_reqnum;
		this.u_id = u_id;
		this.p_num = p_num;
		this.pr_ox = pr_ox;
		this.pr_place = pr_place;
		this.pr_date = pr_date;
	}

	public String getPr_reqnum() {
		return pr_reqnum;
	}

	public void setPr_reqnum(String pr_reqnum) {
		this.pr_reqnum = pr_reqnum;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getP_num() {
		return p_num;
	}

	public void setP_num(String p_num) {
		this.p_num = p_num;
	}

	public String getPr_ox() {
		return pr_ox;
	}

	public void setPr_ox(String pr_ox) {
		this.pr_ox = pr_ox;
	}

	public String getPr_place() {
		return pr_place;
	}

	public void setPr_place(String pr_place) {
		this.pr_place = pr_place;
	}

	public String getPr_date() {
		return pr_date;
	}

	public void setPr_date(String pr_date) {
		this.pr_date = pr_date;
	};
	
	
	
	
	
	

}
