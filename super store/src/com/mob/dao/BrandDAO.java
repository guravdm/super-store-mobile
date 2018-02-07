package com.mob.dao;

import com.mob.beans.BrandBeans;

public interface BrandDAO {

	void saveBrandName(BrandBeans bean);

	void updateBrandName(BrandBeans bean);

	void deleteBrandName(BrandBeans bean);

}
