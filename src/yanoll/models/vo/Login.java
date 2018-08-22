package yanoll.models.vo;

public class Login {
	private String id;
	private String password;
	
	
	public Login(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}
	
	public Login() {}

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
}
