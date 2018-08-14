package yanoll.models.vo;

public class Booking {

	private int booking_num;
	private int h_id;
	private int user_no;
	private int start_num;
	private int end_num;
	private String booking_name;
	private int booking_price;
	private int stay;
	
	public Booking(){}

	public Booking(int booking_num, int h_id, int user_no, int start_num, int end_num, String booking_name,
			int booking_price, int stay) {
		super();
		this.booking_num = booking_num;
		this.h_id = h_id;
		this.user_no = user_no;
		this.start_num = start_num;
		this.end_num = end_num;
		this.booking_name = booking_name;
		this.booking_price = booking_price;
		this.stay = stay;
	}

	public int getBooking_num() {
		return booking_num;
	}

	public void setBooking_num(int booking_num) {
		this.booking_num = booking_num;
	}

	public int getH_id() {
		return h_id;
	}

	public void setH_id(int h_id) {
		this.h_id = h_id;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getStart_num() {
		return start_num;
	}

	public void setStart_num(int start_num) {
		this.start_num = start_num;
	}

	public int getEnd_num() {
		return end_num;
	}

	public void setEnd_num(int end_num) {
		this.end_num = end_num;
	}

	public String getBooking_name() {
		return booking_name;
	}

	public void setBooking_name(String booking_name) {
		this.booking_name = booking_name;
	}

	public int getBooking_price() {
		return booking_price;
	}

	public void setBooking_price(int booking_price) {
		this.booking_price = booking_price;
	}

	public int getStay() {
		return stay;
	}

	public void setStay(int stay) {
		this.stay = stay;
	}
	
	
}
