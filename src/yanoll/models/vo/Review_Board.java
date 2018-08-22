package yanoll.models.vo;

import java.io.Serializable;

public class Review_Board implements Serializable {
	private int r_no;
	private String r_title;
	private int r_grade;
	private String r_content;
	private String r_redate;
	private int r_hitcount;
	private String r_fname ;
	private int p_no;
	private String hotle_name;
	private int number_of_stay_days;
	private int user_no;
	private String id;
	
	
	public Review_Board() {
		super();
	}

	public Review_Board(int r_no, String r_title, int r_grade, String r_content, String r_redate, int r_hitcount,
			String r_fname , int p_no, String hotle_name, int number_of_stay_days, int user_no, String id) {
		super();
		this.r_no = r_no;
		this.r_title = r_title;
		this.r_grade = r_grade;
		this.r_content = r_content;
		this.r_redate = r_redate;
		this.r_hitcount = r_hitcount;
		this.r_fname  = r_fname ;
		this.p_no = p_no;
		this.hotle_name = hotle_name;
		this.number_of_stay_days = number_of_stay_days;
		this.user_no = user_no;
		this.id = id;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getR_title() {
		return r_title;
	}

	public void setR_title(String r_title) {
		this.r_title = r_title;
	}

	public int getR_grade() {
		return r_grade;
	}

	public void setR_grade(int r_grade) {
		this.r_grade = r_grade;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public String getR_redate() {
		return r_redate;
	}

	public void setR_redate(String r_redate) {
		this.r_redate = r_redate;
	}

	public int getR_hitcount() {
		return r_hitcount;
	}

	public void setR_hitcount(int r_hitcount) {
		this.r_hitcount = r_hitcount;
	}

	public String getr_fname () {
		return r_fname ;
	}

	public void setr_fname (String r_fname ) {
		this.r_fname  = r_fname ;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String gethotle_name() {
		return hotle_name;
	}

	public void sethotle_name(String hotle_name) {
		this.hotle_name = hotle_name;
	}

	public int getNumber_of_stay_days() {
		return number_of_stay_days;
	}

	public void setNumber_of_stay_days(int number_of_stay_days) {
		this.number_of_stay_days = number_of_stay_days;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getid() {
		return id;
	}

	public void setid(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Review_Board [r_no=" + r_no + ", r_title=" + r_title + ", r_grade=" + r_grade + ", r_content="
				+ r_content + ", r_redate=" + r_redate + ", r_hitcount=" + r_hitcount + ", r_fname=" + r_fname
				+ ", p_no=" + p_no + ", hotle_name=" + hotle_name + ", number_of_stay_days=" + number_of_stay_days
				+ ", user_no=" + user_no + ", id=" + id + "]";
	}
	
	
}
