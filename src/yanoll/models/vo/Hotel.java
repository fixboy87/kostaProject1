package yanoll.models.vo;

import java.io.Serializable;

public class Hotel implements Serializable {
	
	private int h_no;
	private String h_name;
	private int h_phonenum;
	private String h_mail;
	private String h_address;
	private int room_count;
	private String h_id;
	private String h_password;
	private int h_profit;
	private String h_info;
	private String pic_url;
	private String h_location;
	
	
	public Hotel() {}


	public Hotel(int h_no, String h_name, int h_phonenum, String h_mail, String h_address, int room_count, String h_id,
			String h_password, int h_profit, String h_info, String pic_url, String h_location) {
		super();
		this.h_no = h_no;
		this.h_name = h_name;
		this.h_phonenum = h_phonenum;
		this.h_mail = h_mail;
		this.h_address = h_address;
		this.room_count = room_count;
		this.h_id = h_id;
		this.h_password = h_password;
		this.h_profit = h_profit;
		this.h_info = h_info;
		this.pic_url = pic_url;
		this.h_location = h_location;
	}


	public int getH_no() {
		return h_no;
	}


	public void setH_no(int h_no) {
		this.h_no = h_no;
	}


	public String getH_name() {
		return h_name;
	}


	public void setH_name(String h_name) {
		this.h_name = h_name;
	}


	public int getH_phonenum() {
		return h_phonenum;
	}


	public void setH_phonenum(int h_phonenum) {
		this.h_phonenum = h_phonenum;
	}


	public String getH_mail() {
		return h_mail;
	}


	public void setH_mail(String h_mail) {
		this.h_mail = h_mail;
	}


	public String getH_address() {
		return h_address;
	}


	public void setH_address(String h_address) {
		this.h_address = h_address;
	}


	public int getRoom_count() {
		return room_count;
	}


	public void setRoom_count(int room_count) {
		this.room_count = room_count;
	}


	public String getH_id() {
		return h_id;
	}


	public void setH_id(String h_id) {
		this.h_id = h_id;
	}


	public String getH_password() {
		return h_password;
	}


	public void setH_password(String h_password) {
		this.h_password = h_password;
	}


	public int getH_profit() {
		return h_profit;
	}


	public void setH_profit(int h_profit) {
		this.h_profit = h_profit;
	}


	public String getH_info() {
		return h_info;
	}


	public void setH_info(String h_info) {
		this.h_info = h_info;
	}


	public String getPic_url() {
		return pic_url;
	}


	public void setPic_url(String pic_url) {
		this.pic_url = pic_url;
	}


	public String getH_location() {
		return h_location;
	}


	public void setH_location(String h_location) {
		this.h_location = h_location;
	}


	
}