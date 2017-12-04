package semiproject.dto;

public class UserDTO {
	private int user_num; // 회원번호
	private String user_name; // 회원이름
	private String user_id; // 회원아이디
	private String user_pw; // 회원비밀번호
	private String user_gender; // 회원성별
	private String user_email; // 회원이메일
	private String user_address; // 회원주소
	private int user_contact; // 회원연락처
	private int user_birthday; // 회원생년월일

	public UserDTO() {
	}

	public int getUser_num() {
		return user_num;
	}

	public void setUser_num(int user_num) {
		this.user_num = user_num;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}

	public String getUser_gender() {
		return user_gender;
	}

	public void setUser_gender(String user_gender) {
		this.user_gender = user_gender;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public int getUser_contact() {
		return user_contact;
	}

	public void setUser_contact(int user_contact) {
		this.user_contact = user_contact;
	}

	public int getUser_birthday() {
		return user_birthday;
	}

	public void setUser_birthday(int user_birthday) {
		this.user_birthday = user_birthday;
	}

}// end class
