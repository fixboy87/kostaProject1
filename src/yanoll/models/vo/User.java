package yanoll.models.vo;

public abstract class User {
	private int userNo;
	
	private String id;
	private String pass;
	private String tel;
	private String name;
	private String email;
	
	private String authority;

	
	public User(int userNo, String id, String pass, String tel, String name, String email, String authority) {
		super();
		this.userNo = userNo;
		this.id = id;
		this.pass = pass;
		this.tel = tel;
		this.name = name;
		this.email = email;
		this.authority = authority;
	}
	
	public User(String id, String pass, String tel, String name, String email) {
		super();
		this.id = id;
		this.pass = pass;
		this.tel = tel;
		this.name = name;
		this.email = email;
	}

	public User() {
		// TODO Auto-generated constructor stub
	}
	
	
	public int getUserNo() {
		return userNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
}

class Consumer extends User {
	private String sex;
	private String dob;
	
	
	public Consumer(int userNo, String id, String pass, String tel, String name, String email, String authority,
			String sex, String dob) {
		super(userNo, id, pass, tel, name, email, authority);
		this.sex = sex;
		this.dob = dob;
	}
	
	public Consumer() { }

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}
}

class Owner extends User {
	private int profit;

	public Owner(int userNo, String id, String pass, String tel, String name, String email, String authority,
			int profit) {
		super(userNo, id, pass, tel, name, email, authority);
		this.profit = profit;
	}
	
	public Owner() { }

	public int getProfit() {
		return profit;
	}

	public void setProfit(int profit) {
		this.profit = profit;
	}
}