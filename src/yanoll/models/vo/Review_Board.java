package yanoll.models.vo;

public class Review_Board {
	private int r_no;
	
	private String r_title;
	private int r_grade;
	private String r_content;
	private String r_redate;
	private int r_hitcount;
	
	private int userNo;
	private int h_id;
	
	
	public Review_Board() {	}


	public Review_Board(int r_no, String r_title, int r_grade, String r_content, String r_redate, int r_hitcount,
			int userNo, int h_id) {
		super();
		this.r_no = r_no;
		this.r_title = r_title;
		this.r_grade = r_grade;
		this.r_content = r_content;
		this.r_redate = r_redate;
		this.r_hitcount = r_hitcount;
		this.userNo = userNo;
		this.h_id = h_id;
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


	public int getUserNo() {
		return userNo;
	}


	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}


	public int getH_id() {
		return h_id;
	}


	public void setH_id(int h_id) {
		this.h_id = h_id;
	}
	
	

}
