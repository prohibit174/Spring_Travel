package kosta.travel.dto;

//�뜲�씠�꽣瑜� �닔吏묓븯�뒗 �슜�룄
public class LoginDTO {
	private String urd;
	private String upw;
	private boolean useCookie;
	
	public String getUrd() {
		return urd;
	}
	public void setUrd(String urd) {
		this.urd = urd;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	@Override
	public String toString() {
		return "LoginDTO [urd=" + urd + ", upw=" + upw + ", useCookie=" + useCookie + "]";
	}
	
	
}
