package com.mob.dao;

import com.mob.beans.VendorRegBean;

public interface VendorDAO {

	boolean saveRequest(VendorRegBean bean);

	boolean updateRequest(VendorRegBean bean);

}
