package yanoll.models.vo;

public class Hotel_detail {

	private int h_id;
	private String hotel_name;
	private String hotel_email;
	private int hotel_phone;
	private String owner_name;
	private String hotel_address;
	
	public Hotel_detail(){}

	public Hotel_detail(int h_id, String hotel_name, String hotel_email, int hotel_phone, String owner_name,
			String hotel_address) {
		super();
		this.h_id = h_id;
		this.hotel_name = hotel_name;
		this.hotel_email = hotel_email;
		this.hotel_phone = hotel_phone;
		this.owner_name = owner_name;
		this.hotel_address = hotel_address;
	}

	public int getH_id() {
		return h_id;
	}

	public void setH_id(int h_id) {
		this.h_id = h_id;
	}

	public String getHotel_name() {
		return hotel_name;
	}

	public void setHotel_name(String hotel_name) {
		this.hotel_name = hotel_name;
	}

	public String getHotel_email() {
		return hotel_email;
	}

	public void setHotel_email(String hotel_email) {
		this.hotel_email = hotel_email;
	}

	public int getHotel_phone() {
		return hotel_phone;
	}

	public void setHotel_phone(int hotel_phone) {
		this.hotel_phone = hotel_phone;
	}

	public String getOwner_name() {
		return owner_name;
	}

	public void setOwner_name(String owner_name) {
		this.owner_name = owner_name;
	}

	public String getHotel_address() {
		return hotel_address;
	}

	public void setHotel_address(String hotel_address) {
		this.hotel_address = hotel_address;
	}
	
	
}
