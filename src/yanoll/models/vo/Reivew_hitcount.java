package yanoll.models.vo;

public class Reivew_hitcount {
	private int hit_no;
	private int r_no;
	private String hit_update_date;
	private String hit_ip;
	
	public Reivew_hitcount() {
		super();
	}
	public Reivew_hitcount(int hit_no, int r_no, String hit_update_date, String hit_ip) {
		super();
		this.hit_no = hit_no;
		this.r_no = r_no;
		this.hit_update_date = hit_update_date;
		this.hit_ip = hit_ip;
	}
	public int getHit_no() {
		return hit_no;
	}
	public void setHit_no(int hit_no) {
		this.hit_no = hit_no;
	}
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public String getHit_update_date() {
		return hit_update_date;
	}
	public void setHit_update_date(String hit_update_date) {
		this.hit_update_date = hit_update_date;
	}
	public String getHit_ip() {
		return hit_ip;
	}
	public void setHit_ip(String hit_ip) {
		this.hit_ip = hit_ip;
	}
	
	
}
