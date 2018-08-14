package yanoll.models.vo;

public class Hotel_List {
	private int h_id;
	private String pic_url;
	private String h_content;
	private int h_price;
	private String h_location;

	public Hotel_List() {}

	public Hotel_List(int h_id, String pic_url, String h_content, int h_price, String h_location) {
		super();
		this.h_id = h_id;
		this.pic_url = pic_url;
		this.h_content = h_content;
		this.h_price = h_price;
		this.h_location = h_location;
	}

	public int getH_id() {
		return h_id;
	}

	public void setH_id(int h_id) {
		this.h_id = h_id;
	}

	public String getPic_url() {
		return pic_url;
	}

	public void setPic_url(String pic_url) {
		this.pic_url = pic_url;
	}

	public String getH_content() {
		return h_content;
	}

	public void setH_content(String h_content) {
		this.h_content = h_content;
	}

	public int getH_price() {
		return h_price;
	}

	public void setH_price(int h_price) {
		this.h_price = h_price;
	}

	public String getH_location() {
		return h_location;
	}

	public void setH_location(String h_location) {
		this.h_location = h_location;
	}

}