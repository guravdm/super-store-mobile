package com.mob.beans;

public class EmployeeBeans {
	private int id;
	private String username;
	private String password;
	private String role;
	private String Name;
	private String address;
	private String mobileno;
	private String created_by;
	private String created_time;
	private String update_time;

	public EmployeeBeans() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "EmployeeBeans [id=" + id + ", username=" + username
				+ ", password=" + password + ", role=" + role + ", Name="
				+ Name + ", address=" + address + ", mobileno=" + mobileno
				+ ", created_by=" + created_by + ", created_time="
				+ created_time + ", update_time=" + update_time + "]";
	}

	public EmployeeBeans(String username, String password, String role,
			String name, String address, String mobileno, String created_by,
			String created_time, String update_time) {
		this.username = username;
		this.password = password;
		this.role = role;
		Name = name;
		this.address = address;
		this.mobileno = mobileno;
		this.created_by = created_by;
		this.created_time = created_time;
		this.update_time = update_time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobileno() {
		return mobileno;
	}

	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public String getCreated_time() {
		return created_time;
	}

	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}

	public String getUpdate_time() {
		return update_time;
	}

	public void setUpdate_time(String update_time) {
		this.update_time = update_time;
	}

}
