package yanoll.models.vo;

import java.io.Serializable;

public class Hotel_room implements Serializable {

	private int room_num;
	private int h_no;
	private String pic_room_url;
	private String room_type;
	private int reservation;
	private int room_price;
	private String h_name;

/*	
Alter table hotel_room Add(room_price number);

insert into Hotel_room values(1, 1, 'lotte_s.jpg', 'standard', 0,15);
insert into Hotel_room values(2, 1, 'lotte_p.jpg', 'premium', 0,30);
insert into Hotel_room values(3, 1, 'lotte_su.jpg', 'suite', 0,60);  

insert into Hotel_room values(4, 2, 'lgrandhyattl_s.png', 'standard', 0,18);
insert into Hotel_room values(5, 2, 'grandhyatt_p.png', 'premium', 0,36);
insert into Hotel_room values(6, 2, 'grandhyatt_su.png', 'suite', 0,72);

insert into Hotel_room values(7, 3, 'stjohns_s.jpg', 'standard', 0,13);
insert into Hotel_room values(8, 3, 'stjohns_p.jpg', 'premium', 0,30);
insert into Hotel_room values(9, 3, 'stjohns_su.jpg', 'suite', 0,50);

insert into Hotel_room values(10, 4, 'paradise_standard.jpg', 'standard', 0,14);
insert into Hotel_room values(11, 4, 'paradise_premium.jpg', 'premium', 0,28);
insert into Hotel_room values(12, 4, 'paradise_suite.jpg', 'suite', 0,56);

insert into Hotel_room values(13, 5, 'ramada_s.jpg', 'standard', 0,18);
insert into Hotel_room values(14, 5, 'ramada_p.jpg', 'premium', 0,20);
insert into Hotel_room values(15, 5, 'ramada_su.jpg', 'suite', 0,25);

insert into Hotel_room values(16, 6, 'comodo_s.jpg', 'standard', 0,22);
insert into Hotel_room values(17, 6, 'comodo_p.jpg', 'premium', 0,44);
insert into Hotel_room values(18, 6, 'comodo_su.jpg', 'suite', 0,88);

insert into Hotel_room values(19, 7, 'interburgo_s.jpg', 'standard', 0,14);
insert into Hotel_room values(20, 7, 'interburgo_p.jpg', 'premium', 0,30);
insert into Hotel_room values(21, 7, 'interburgo_su.jpg', 'suite', 0,66);

insert into Hotel_room values(22, 8, 'holyday_s.jpg', 'standard', 0,9);
insert into Hotel_room values(23, 8, 'holyday_p.jpg', 'premium', 0,18);
insert into Hotel_room values(24, 8, 'holyday_su.jpg', 'suite', 0,27);

insert into Hotel_room values(25, 9, 'golden_s.jpg', 'standard', 0,13);
insert into Hotel_room values(26, 9, 'golden_p.jpg', 'premium', 0,26);
insert into Hotel_room values(27, 9, 'golden_su.jpg', 'suite', 0,52);

insert into Hotel_room values(28, 10, 'shilla_s.jpg', 'standard', 0,28);
insert into Hotel_room values(29, 10, 'shilla_p.jpg', 'premium', 0,56);
insert into Hotel_room values(30, 10, 'shilla_su.jpg', 'suite', 0,102);

commit;


*/
	public Hotel_room() {
	}

	public Hotel_room(int room_num, int h_no, String pic_room_url, String room_type, int reservation, int room_price,
			String h_name) {
		super();
		this.room_num = room_num;
		this.h_no = h_no;
		this.pic_room_url = pic_room_url;
		this.room_type = room_type;
		this.reservation = reservation;
		this.room_price = room_price;
		this.h_name = h_name;
	}

	public String getH_name() {
		return h_name;
	}

	public void setH_name(String h_name) {
		this.h_name = h_name;
	}

	public int getRoom_price() {
		return room_price;
	}

	public void setRoom_price(int room_price) {
		this.room_price = room_price;
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

	public int getReservation() {
		return reservation;
	}

	public void setReservation(int reservation) {
		this.reservation = reservation;
	}

}
