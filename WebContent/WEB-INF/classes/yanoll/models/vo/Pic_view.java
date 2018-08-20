package yanoll.models.vo;

public class Pic_view {

	private int h_no;
	private int pic_seq;
	private String slider_pic_url;
	
	public Pic_view(){}

	public Pic_view(int h_no, int pic_seq, String slider_pic_url) {
		super();
		this.h_no = h_no;
		this.pic_seq = pic_seq;
		this.slider_pic_url = slider_pic_url;
	}

	public int getH_no() {
		return h_no;
	}

	public void setH_no(int h_no) {
		this.h_no = h_no;
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
