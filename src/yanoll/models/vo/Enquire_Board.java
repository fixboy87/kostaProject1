package yanoll.models.vo;

import java.io.Serializable;

public class Enquire_Board implements Serializable {
	private int e_seq;
	private String e_title;
	private String e_contents;
	private String e_date;
	private int user_no;
	
	
	public Enquire_Board() {
	
	}


	public Enquire_Board(int e_seq, String e_title, String e_contents, String e_date, int user_no) {
		super();
		this.e_seq = e_seq;
		this.e_title = e_title;
		this.e_contents = e_contents;
		this.e_date = e_date;
		this.user_no = user_no;
	}


	public int getE_seq() {
		return e_seq;
	}


	public void setE_seq(int e_seq) {
		this.e_seq = e_seq;
	}


	public String getE_title() {
		return e_title;
	}


	public void setE_title(String e_title) {
		this.e_title = e_title;
	}


	public String getE_contents() {
		return e_contents;
	}


	public void setE_contents(String e_contents) {
		this.e_contents = e_contents;
	}


	public String getE_date() {
		return e_date;
	}


	public void setE_date(String e_date) {
		this.e_date = e_date;
	}


	public int getUser_no() {
		return user_no;
	}


	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	
	
	
}

