package com.mob.bo;

import com.mob.beans.VendorRegBean;
import com.mob.dao.VendorDAO;
import com.mob.daoImpl.VendorDAOImpl;



public class VendorBO {

	public boolean saveEntry(VendorRegBean bean) {
		boolean flag = false;

		VendorDAO dao = new VendorDAOImpl();
		flag = dao.saveRequest(bean);

		return flag;
	}

	public boolean updateEntry(VendorRegBean bean) {
		boolean flag = false;

		VendorDAO dao = new VendorDAOImpl();
		flag = dao.updateRequest(bean);

		return flag;
	}
}
