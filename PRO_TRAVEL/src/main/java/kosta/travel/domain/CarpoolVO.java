package kosta.travel.domain;

public class CarpoolVO {

	private int c_num;
	private String u_id;
	private String start_point;
	private String dest_point;
	private String way_point;
	private int c_price;
	private int c_person;
	private int c_year;
	private int c_month;
	private int c_date;
	private int c_hour;
	private int c_minute;
	private String u_img;

	
	public CarpoolVO(){}
	
	
	public CarpoolVO(int c_num, String u_id, String start_point, String dest_point, String way_point, int c_price,
			int c_person, int c_year, int c_month, int c_date, int c_hour, int c_minute, String u_img) {
		super();
		this.c_num = c_num;
		this.u_id = u_id;
		this.start_point = start_point;
		this.dest_point = dest_point;
		this.way_point = way_point;
		this.c_price = c_price;
		this.c_person = c_person;
		this.c_year = c_year;
		this.c_month = c_month;
		this.c_date = c_date;
		this.c_hour = c_hour;
		this.c_minute = c_minute;
		this.u_img = u_img;
	}




	public int getC_num() {
		return c_num;
	}


	public void setC_num(int c_num) {
		this.c_num = c_num;
	}


	public String getU_id() {
		return u_id;
	}


	public void setU_id(String u_id) {
		this.u_id = u_id;
	}


	public String getStart_point() {
		return start_point;
	}


	public void setStart_point(String start_point) {
		this.start_point = start_point;
	}


	public String getDest_point() {
		return dest_point;
	}


	public void setDest_point(String dest_point) {
		this.dest_point = dest_point;
	}


	public String getWay_point() {
		return way_point;
	}


	public void setWay_point(String way_point) {
		this.way_point = way_point;
	}


	public int getC_price() {
		return c_price;
	}


	public void setC_price(int c_price) {
		this.c_price = c_price;
	}


	public int getC_person() {
		return c_person;
	}


	public void setC_person(int c_person) {
		this.c_person = c_person;
	}


	public int getC_year() {
		return c_year;
	}


	public void setC_year(int c_year) {
		this.c_year = c_year;
	}


	public int getC_month() {
		return c_month;
	}


	public void setC_month(int c_month) {
		this.c_month = c_month;
	}


	public int getC_date() {
		return c_date;
	}


	public void setC_date(int c_date) {
		this.c_date = c_date;
	}


	public int getC_hour() {
		return c_hour;
	}


	public void setC_hour(int c_hour) {
		this.c_hour = c_hour;
	}


	public int getC_minute() {
		return c_minute;
	}


	public void setC_minute(int c_minute) {
		this.c_minute = c_minute;
	}


	public String getU_img() {
		return u_img;
	}


	public void setU_img(String u_img) {
		this.u_img = u_img;
	}

	
	

	
}
