package yanoll.models.vo;

public class Booking {

	private int booking_num;
	private int room_num;
	private int h_no;
	private String booking_name;
	private int booking_price;
	private String start_day;
	private String end_day;
	private int seq;
	private int stay_day;
	private int p_condition;
	private int b_date;
	
	public Booking(){}

	public Booking(int booking_num, int room_num, int h_no, String booking_name, int booking_price, String start_day,
			String end_day, int seq, int stay_day, int p_condition, int b_date) {
		super();
		this.booking_num = booking_num;
		this.room_num = room_num;
		this.h_no = h_no;
		this.booking_name = booking_name;
		this.booking_price = booking_price;
		this.start_day = start_day;
		this.end_day = end_day;
		this.seq = seq;
		this.stay_day = stay_day;
		this.p_condition = p_condition;
		this.b_date = b_date;
	}

	public int getBooking_num() {
		return booking_num;
	}

	public void setBooking_num(int booking_num) {
		this.booking_num = booking_num;
	}

	public int getRoom_num() {
		return room_num;
	}

	public void setRoom_num(int room_num) {
		this.room_num = room_num;
	}

	public int getH_no() {
		return h_no;
	}

	public void setH_no(int h_no) {
		this.h_no = h_no;
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

	public String getStart_day() {
		return start_day;
	}

	public void setStart_day(String start_day) {
		this.start_day = start_day;
	}

	public String getEnd_day() {
		return end_day;
	}

	public void setEnd_day(String end_day) {
		this.end_day = end_day;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getStay_day() {
		return stay_day;
	}

	public void setStay_day(int stay_day) {
		this.stay_day = stay_day;
	}

	public int getP_condition() {
		return p_condition;
	}

	public void setP_condition(int p_condition) {
		this.p_condition = p_condition;
	}

	public int getB_date() {
		return b_date;
	}

	public void setB_date(int b_date) {
		this.b_date = b_date;
	}

	

}
