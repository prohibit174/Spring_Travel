package kosta.travel.domain;

public class UsersVO{

	private String u_id;
	private String u_pwd;
	private String u_name;
	private String u_birth;
	private String u_sex;
	private String u_address;
	private String u_job;
	private String u_lang; 
	private String u_religion;
	private String u_license;
	private String u_img;
	private String u_style;

	public UsersVO(){}

	public UsersVO(String u_id, String u_pwd, String u_name, String u_birth, String u_sex, String u_address, String u_job,
			String u_lang, String u_religion, String u_license, String u_img, String u_style) {
		super();
		this.u_id = u_id;
		this.u_pwd = u_pwd;
		this.u_name = u_name;
		this.u_birth = u_birth;
		this.u_sex = u_sex;
		this.u_address = u_address;
		this.u_job = u_job;
		this.u_lang = u_lang;
		this.u_religion = u_religion;
		this.u_license = u_license;
		this.u_img = u_img;
		this.u_style = u_style;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getU_pwd() {
		return u_pwd;
	}

	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
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

	public String getU_sex() {
		return u_sex;
	}

	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
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

	public String getU_img() {
		return u_img;
	}

	public void setU_img(String u_img) {
		this.u_img = u_img;
	}

	public String getU_style() {
		return u_style;
	}

	public void setU_style(String u_style) {
		this.u_style = u_style;
	}

	
	
	
}


