package yanoll.models.vo;

import java.io.Serializable;

/*
DROP TABLE users;
DROP SEQUENCE users_seq;

CREATE TABLE users (
    userNo      NUMBER,
    id          VARCHAR2(20) NOT NULL,
    password    VARCHAR2(30) NOT NULL,
    name        VARCHAR2(30) NOT NULL,
    tel         VARCHAR2(20) NOT NULL,
    email       VARCHAR2(40) NOT NULL,
    gender      VARCHAR2(10),
    birth       VARCHAR2(30),
    
    CONSTRAINT users_userNo_pk PRIMARY KEY(userNo),
    CONSTRAINT users_id_unique UNIQUE(id),
    CONSTRAINT users_password_unique UNIQUE(password),
    CONSTRAINT users_email_unique UNIQUE(email),
    CONSTRAINT users_gender_check CHECK(gender = 'male' OR gender = 'female')
    );
    
CREATE SEQUENCE users_seq
    START WITH 1
    INCREMENT BY 1;
 */
 

public class Users implements Serializable{
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
			String birth) {
		super();
		this.userNo = userNo;
		this.id = id;
		this.password = password;
		this.name = name;
		this.tel = tel;
		this.email = email;
		this.gender = gender;
		this.birth = birth;
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

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "Users [userNo=" + userNo + ", id=" + id + ", password=" + password + ", name=" + name + ", tel=" + tel
				+ ", email=" + email + ", gender=" + gender + ", birth=" + birth + "]";
	}
	
	
	
}