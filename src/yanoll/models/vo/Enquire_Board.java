package yanoll.models.vo;

/*create table enquire_board(
e_seq number PRIMARY KEY,
e_title varchar2(150),
e_contents varchar2(1500),
e_date date,
hotel_name varchar2(50),
id varchar2(30),
user_no number,
h_no number
);
create sequence enquire_board_seq start with 1;

create table enquire_reply(
r_seq number primary key,
r_contents varchar2(1500),
r_date date,
hotel_name varchar2(20),
e_seq number,
CONSTRAINT enquire_reply_fk
       FOREIGN KEY(e_seq)
       REFERENCES enquire_board(seq)
);

create sequence enquire_reply_r_seq start with 1;*/
import java.io.Serializable;

/*create table enquire_board(
e_seq number PRIMARY KEY,
e_title varchar2(150),
e_contents varchar2(1500),
e_date date,
hotel_name varchar2(50),
id varchar2(30),
user_no number,
h_no number
);
create sequence enquire_board_seq start with 1;

create table enquire_reply(
r_seq number primary key,
r_contents varchar2(1500),
r_date date,
hotel_name varchar2(50),
e_seq number,
id varchar2(30),
CONSTRAINT enquire_reply_fk
       FOREIGN KEY(e_seq)
       REFERENCES enquire_board(e_seq)
);

create sequence enquire_reply_r_seq start with 1;
*/
public class Enquire_Board implements Serializable {
	private int e_seq;
	private String e_title;
	private String e_contents;
	private String e_date;
	private String hotel_name;
	private String id;
	private int user_no;
	private int h_no;
	
	
	public Enquire_Board() {
	
	}


	public Enquire_Board(int e_seq, String e_title, String e_contents, String e_date, String hotel_name, String id,
			int user_no, int h_no) {
		super();
		this.e_seq = e_seq;
		this.e_title = e_title;
		this.e_contents = e_contents;
		this.e_date = e_date;
		this.hotel_name = hotel_name;
		this.id = id;
		this.user_no = user_no;
		this.h_no = h_no;
	}


	public int getE_seq() {
		return e_seq;
	}


	public void setE_seq(int e_seq) {
		this.e_seq = e_seq;
	}


	public String getE_title() {
		return e_title;
	}


	public void setE_title(String e_title) {
		this.e_title = e_title;
	}


	public String getE_contents() {
		return e_contents;
	}


	public void setE_contents(String e_contents) {
		this.e_contents = e_contents;
	}


	public String getE_date() {
		return e_date;
	}


	public void setE_date(String e_date) {
		this.e_date = e_date;
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


	public int getUser_no() {
		return user_no;
	}


	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}


	public int getH_no() {
		return h_no;
	}


	public void setH_no(int h_no) {
		this.h_no = h_no;
	}


	@Override
	public String toString() {
		return "Enquire_Board [e_seq=" + e_seq + ", e_title=" + e_title + ", e_contents=" + e_contents + ", e_date="
				+ e_date + ", hotel_name=" + hotel_name + ", id=" + id + ", user_no=" + user_no + ", h_no=" + h_no
				+ "]";
	}

    
	
	
	
	
}

