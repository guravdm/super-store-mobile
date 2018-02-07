package com.mob.beans;

public class BrandBeans {
	private int id;

	private String category_name, created_time, updated_time, created_by,
			about;

	public BrandBeans() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "BrandBeans [id=" + id + ", category_name=" + category_name
				+ ", created_time=" + created_time + ", updated_time="
				+ updated_time + ", created_by=" + created_by + ", about="
				+ about + "]";
	}

	public BrandBeans(String category_name, String created_time,
			String updated_time, String created_by, String about) {
		this.category_name = category_name;
		this.created_time = created_time;
		this.updated_time = updated_time;
		this.created_by = created_by;
		this.about = about;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getCreated_time() {
		return created_time;
	}

	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}

	public String getUpdated_time() {
		return updated_time;
	}

	public void setUpdated_time(String updated_time) {
		this.updated_time = updated_time;
	}

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}

}
