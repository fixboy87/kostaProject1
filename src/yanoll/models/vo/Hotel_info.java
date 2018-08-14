package yanoll.models.vo;

public class Hotel_info {
	private int regist_num;
	private int h_id;
	private String room_type;
	private int room_type_price;
	
	public Hotel_info(){}

	public Hotel_info(int regist_num, int h_id, String room_type, int room_type_price) {
		super();
		this.regist_num = regist_num;
		this.h_id = h_id;
		this.room_type = room_type;
		this.room_type_price = room_type_price;
	}


	public int getRegist_num() {
		return regist_num;
	}


	public void setRegist_num(int regist_num) {
		this.regist_num = regist_num;
	}


	public int getH_id() {
		return h_id;
	}


	public void setH_id(int h_id) {
		this.h_id = h_id;
	}


	public String getRoom_type() {
		return room_type;
	}


	public void setRoom_type(String room_type) {
		this.room_type = room_type;
	}


	public int getRoom_type_price() {
		return room_type_price;
	}


	public void setRoom_type_price(int room_type_price) {
		this.room_type_price = room_type_price;
	}
	
	
}
