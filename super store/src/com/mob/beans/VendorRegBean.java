package com.mob.beans;

public class VendorRegBean {
	private int id;
	String vendor_id, f_name, l_name, email, mob_no, home_no, gst_no, pan_no,
			address, created_time, created_by, updatedTime;

	public VendorRegBean() {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getVendor_id() {
		return vendor_id;
	}

	public void setVendor_id(String vendor_id) {
		this.vendor_id = vendor_id;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getL_name() {
		return l_name;
	}

	public void setL_name(String l_name) {
		this.l_name = l_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMob_no() {
		return mob_no;
	}

	public void setMob_no(String mob_no) {
		this.mob_no = mob_no;
	}

	public String getHome_no() {
		return home_no;
	}

	public void setHome_no(String home_no) {
		this.home_no = home_no;
	}

	public String getGst_no() {
		return gst_no;
	}

	public void setGst_no(String gst_no) {
		this.gst_no = gst_no;
	}

	public String getPan_no() {
		return pan_no;
	}

	public void setPan_no(String pan_no) {
		this.pan_no = pan_no;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCreated_time() {
		return created_time;
	}

	public void setCreated_time(String created_time) {
		this.created_time = created_time;
	}

	public String getCreated_by() {
		return created_by;
	}

	public void setCreated_by(String created_by) {
		this.created_by = created_by;
	}

	public String getUpdatedTime() {
		return updatedTime;
	}

	public void setUpdatedTime(String updatedTime) {
		this.updatedTime = updatedTime;
	}

	@Override
	public String toString() {
		return "VendorRegBean [id=" + id + ", vendor_id=" + vendor_id
				+ ", f_name=" + f_name + ", l_name=" + l_name + ", email="
				+ email + ", mob_no=" + mob_no + ", home_no=" + home_no
				+ ", gst_no=" + gst_no + ", pan_no=" + pan_no + ", address="
				+ address + ", created_time=" + created_time + ", created_by="
				+ created_by + ", updatedTime=" + updatedTime + "]";
	}

	public VendorRegBean(String vendor_id, String f_name, String l_name,
			String email, String mob_no, String home_no, String gst_no,
			String pan_no, String address, String created_time,
			String created_by, String updatedTime) {
		this.vendor_id = vendor_id;
		this.f_name = f_name;
		this.l_name = l_name;
		this.email = email;
		this.mob_no = mob_no;
		this.home_no = home_no;
		this.gst_no = gst_no;
		this.pan_no = pan_no;
		this.address = address;
		this.created_time = created_time;
		this.created_by = created_by;
		this.updatedTime = updatedTime;
	}

}
