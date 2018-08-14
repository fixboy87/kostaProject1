package yanoll.models.vo;

public class Pic_view {

	private int h_id;
	private int pic_seq;
	private String slider_pic_url;
	
	public Pic_view(){}

	public int getH_id() {
		return h_id;
	}

	public void setH_id(int h_id) {
		this.h_id = h_id;
	}

	public int getPic_seq() {
		return pic_seq;
	}

	public void setPic_seq(int pic_seq) {
		this.pic_seq = pic_seq;
	}

	public String getSlider_pic_url() {
		return slider_pic_url;
	}

	public void setSlider_pic_url(String slider_pic_url) {
		this.slider_pic_url = slider_pic_url;
	}
}
