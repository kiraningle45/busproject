package demo.model;

public class User {

	private String name;
	private String password;
	private String email;
	private int mnumber;
	public User() {
		super();
	}
	public User(String name, String password, String email, int mnumber) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.mnumber = mnumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getMnumber() {
		return mnumber;
	}
	public void setMnumber(int mnumber) {
		this.mnumber = mnumber;
	}
	
	
}
