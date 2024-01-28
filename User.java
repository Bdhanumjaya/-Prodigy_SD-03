package model;

public class User {
	private int id;
	private String name;
	private String number;
	private String email;
	
	
	
	
	public User(String name, String number, String email) {
		super();
		this.name = name;
		this.number = number;
		this.email = email;
	}
	public User(int id, String name, String number, String email) {
		super();
		this.id = id;
		this.name = name;
		this.number = number;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	
	
	
	
	
	
	

}
