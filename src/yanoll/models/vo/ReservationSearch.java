package yanoll.models.vo;

import java.io.Serializable;

public class ReservationSearch implements Serializable{
	private String id;
	private String name;
	private int tel;
	private String start_day;
	private String end_day;
	private int booking_price;

	public ReservationSearch() {
		super();
	}

	public ReservationSearch(String id, String name, int tel, String start_day, String end_day, int booking_price) {
		super();
		this.id = id;
		this.name = name;
		this.tel = tel;
		this.start_day = start_day;
		this.end_day = end_day;
		this.booking_price = booking_price;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
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

	public int getBooking_price() {
		return booking_price;
	}

	public void setBooking_price(int booking_price) {
		this.booking_price = booking_price;
	}

	@Override
	public String toString() {
		return "ReservationSearch [id=" + id + ", name=" + name + ", tel=" + tel + ", start_day=" + start_day
				+ ", end_day=" + end_day + ", booking_price=" + booking_price + "]";
	}
}
