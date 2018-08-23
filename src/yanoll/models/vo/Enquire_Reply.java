package yanoll.models.vo;

import java.io.Serializable;

public class Enquire_Reply implements Serializable{
  private int r_seq;
  private String r_contents;
  private String r_date;
  private String hotel_name;
  private String id;
  private int e_seq;
public Enquire_Reply() {

}
public Enquire_Reply(int r_seq, String r_contents, String r_date, String hotel_name, String id, int e_seq) {
	super();
	this.r_seq = r_seq;
	this.r_contents = r_contents;
	this.r_date = r_date;
	this.hotel_name = hotel_name;
	this.id = id;
	this.e_seq = e_seq;
}
public int getR_seq() {
	return r_seq;
}
public void setR_seq(int r_seq) {
	this.r_seq = r_seq;
}
public String getR_contents() {
	return r_contents;
}
public void setR_contents(String r_contents) {
	this.r_contents = r_contents;
}
public String getR_date() {
	return r_date;
}
public void setR_date(String r_date) {
	this.r_date = r_date;
}
public String getHotel_name() {
	return hotel_name;
}
public void setHotel_name(String hotel_name) {
	this.hotel_name = hotel_name;
}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public int getE_seq() {
	return e_seq;
}
public void setE_seq(int e_seq) {
	this.e_seq = e_seq;
}
@Override
public String toString() {
	return "Enquire_Reply [r_seq=" + r_seq + ", r_contents=" + r_contents + ", r_date=" + r_date + ", hotel_name="
			+ hotel_name + ", id=" + id + ", e_seq=" + e_seq + "]";
}


}
