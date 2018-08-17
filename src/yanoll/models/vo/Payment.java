package yanoll.models.vo;

public class Payment {

	private int p_no;
	private String p_date;
	private int booking_num;
	private int p_cadnum;
	
	public Payment(){}

	public Payment(int p_no, String p_date, int booking_num, int p_cadnum) {
		super();
		this.p_no = p_no;
		this.p_date = p_date;
		this.booking_num = booking_num;
		this.p_cadnum = p_cadnum;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public String getP_date() {
		return p_date;
	}

	public void setP_date(String p_date) {
		this.p_date = p_date;
	}

	public int getBooking_num() {
		return booking_num;
	}

	public void setBooking_num(int booking_num) {
		this.booking_num = booking_num;
	}

	public int getP_cadnum() {
		return p_cadnum;
	}

	public void setP_cadnum(int p_cadnum) {
		this.p_cadnum = p_cadnum;
	}
	
	
}
