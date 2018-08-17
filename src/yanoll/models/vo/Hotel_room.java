package yanoll.models.vo;

public class Hotel_room {

	private int room_num;
	private int h_no;
	private String pic_room_url;
	private String room_type;
	private int standard_price;
	private int premium_price;
	private int suite_price;
	private int reservation;
	
	public Hotel_room(){}

	public Hotel_room(int room_num, int h_no, String pic_room_url, String room_type, int standard_price,
			int premium_price, int suite_price, int reservation) {
		super();
		this.room_num = room_num;
		this.h_no = h_no;
		this.pic_room_url = pic_room_url;
		this.room_type = room_type;
		this.standard_price = standard_price;
		this.premium_price = premium_price;
		this.suite_price = suite_price;
		this.reservation = reservation;
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

	public String getPic_room_url() {
		return pic_room_url;
	}

	public void setPic_room_url(String pic_room_url) {
		this.pic_room_url = pic_room_url;
	}

	public String getRoom_type() {
		return room_type;
	}

	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}

	public int getStandard_price() {
		return standard_price;
	}

	public void setStandard_price(int standard_price) {
		this.standard_price = standard_price;
	}

	public int getPremium_price() {
		return premium_price;
	}

	public void setPremium_price(int premium_price) {
		this.premium_price = premium_price;
	}

	public int getSuite_price() {
		return suite_price;
	}

	public void setSuite_price(int suite_price) {
		this.suite_price = suite_price;
	}

	public int getReservation() {
		return reservation;
	}

	public void setReservation(int reservation) {
		this.reservation = reservation;
	}
	
	
}
