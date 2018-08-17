package yanoll.models.vo;

public class b_cancle {
	
	private int c_no;
	private int booking_num;
	private String c_reason;
	
	public b_cancle(){}

	public b_cancle(int c_no, int booking_num, String c_reason) {
		super();
		this.c_no = c_no;
		this.booking_num = booking_num;
		this.c_reason = c_reason;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public int getBooking_num() {
		return booking_num;
	}

	public void setBooking_num(int booking_num) {
		this.booking_num = booking_num;
	}

	public String getC_reason() {
		return c_reason;
	}

	public void setC_reason(String c_reason) {
		this.c_reason = c_reason;
	}
	
	

}
