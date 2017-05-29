package kosta.travel.domain;


public class AccompanyVO {

	public AccompanyVO(){}
	
	public AccompanyVO(String tp_num, String cor_region, String cor_longi, String cor_lati, String u_id,
			String tp_date, String u_name, String u_birth, String u_address, String u_job, String u_lang, String u_img,
			String u_religion, String u_license, String u_style, String u_sex) {
		super();
		this.tp_num = tp_num;
		this.cor_region = cor_region;
		this.cor_longi = cor_longi;
		this.cor_lati = cor_lati;
		this.u_id = u_id;
		this.tp_date = tp_date;
		this.u_name = u_name;
		this.u_birth = u_birth;
		this.u_address = u_address;
		this.u_job = u_job;
		this.u_lang = u_lang;
		this.u_img = u_img;
		this.u_religion = u_religion;
		this.u_license = u_license;
		this.u_style = u_style;
		this.u_sex = u_sex;
	}


	private String tp_num;
	private String cor_region;
	private String cor_longi;
	private String cor_lati;
	private String u_id;
	private String tp_date;
	private String u_name;
	private String u_birth;
	private String u_address;
	private String u_job;
	private String u_lang;
	private String u_img;
	private String u_religion;
	private String u_license;
	private String u_style;
	private String u_sex;

	
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
	public String getCor_longi() {
		return cor_longi;
	}
	public void setCor_longi(String cor_longi) {
		this.cor_longi = cor_longi;
	}
	public String getCor_lati() {
		return cor_lati;
	}
	public void setCor_lati(String cor_lati) {
		this.cor_lati = cor_lati;
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
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_birth() {
		return u_birth;
	}
	public void setU_birth(String u_birth) {
		this.u_birth = u_birth;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public String getU_job() {
		return u_job;
	}
	public void setU_job(String u_job) {
		this.u_job = u_job;
	}
	public String getU_lang() {
		return u_lang;
	}
	public void setU_lang(String u_lang) {
		this.u_lang = u_lang;
	}
	public String getU_img() {
		return u_img;
	}
	public void setU_img(String u_img) {
		this.u_img = u_img;
	}
	public String getU_religion() {
		return u_religion;
	}
	public void setU_religion(String u_religion) {
		this.u_religion = u_religion;
	}
	public String getU_license() {
		return u_license;
	}
	public void setU_license(String u_license) {
		this.u_license = u_license;
	}
	public String getu_style() {
		return u_style;
	}
	public void setu_style(String u_style) {
		this.u_style = u_style;
	}
	public String getU_sex() {
		return u_sex;
	}
	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}
}
