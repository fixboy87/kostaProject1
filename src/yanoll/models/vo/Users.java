package yanoll.models.vo;

public class Users {
	private int userNo;
	
	private String id;
	private String password;
	private String name;
	private String tel;
	private String email;
	
	private String gender;
	private String birth;
	
	
	public Users() {};
	
	public Users(int userNo, String id, String password, String name, String tel, String email, String gender,
			String dob) {
		super();
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.gender = gender;
		this.birth = dob;
	}

	public Users(String id, String password, String name, String tel, String email, String birth) {
		super();
		this.id = id;
		this.password = password;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.birth = birth;
	}

	public Users(int userNo, String id, String password, String name, String tel, String email, String gender) {
		super();
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.gender = gender;
	}

	public Users(int userNo, String id, String password, String name, String tel, String email) {
		super();
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.name = name;
		this.tel = tel;
		this.email = email;
	}

	
	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String string) {
		this.gender = string;
	}

	public String getDob() {
		return birth;
	}

	public void setDob(String dob) {
		this.birth = dob;
	}
	
	
	
}