package kosta.travel.domain;

public class RouteVO {
	public RouteVO(String tp_num, String cor_region, String u_id, String tp_date) {
		super();
		this.tp_num = tp_num;
		this.cor_region = cor_region;
		this.u_id = u_id;
		this.tp_date = tp_date;
	}
	public RouteVO(){}
	private String tp_num;
	private String cor_region;
	private String u_id;
	private String tp_date;
	
	public String getTp_num() {
		return tp_num;
	}
	public void setTp_num(String tp_num) {
		this.tp_num = tp_num;
	}
	public String getCor_region() {
		return cor_region;
	}
	public void setCor_region(String cor_region) {
		this.cor_region = cor_region;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getTp_date() {
		return tp_date;
	}
	public void setTp_date(String tp_date) {
		this.tp_date = tp_date;
	}

}
