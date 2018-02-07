package com.mob.daoImpl;

import io.hard.util.DoConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.mob.beans.BrandBeans;
import com.mob.dao.BrandDAO;

public class BrandDAOImpl implements BrandDAO {
	Connection con = DoConnection.getConnection();

	@Override
	public void saveBrandName(BrandBeans bean) {
		try {
			Date dt = new Date();

			SimpleDateFormat sdfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String currentTime = sdfs.format(dt);
			PreparedStatement ps = con
					.prepareStatement("insert into brand_names (category_name, created_time, updated_time, created_by, about) values (?, ?, ?, ?, ?)");
			ps.setString(1, bean.getCategory_name());
			ps.setString(2, currentTime);
			ps.setString(3, currentTime);
			ps.setString(4, bean.getCreated_by());
			ps.setString(5, bean.getAbout());
			ps.executeUpdate();
			// System.out.println("record saved");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateBrandName(BrandBeans bean) {

		try {
			Date dt = new Date();

			SimpleDateFormat sdfs = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String currentTime = sdfs.format(dt);

			PreparedStatement ps = con
					.prepareStatement("update brand_names set category_name = ?, updated_time  = ?, created_by  = ?, about  = ? where id = ?");
			ps.setString(1, bean.getCategory_name());
			ps.setString(2, currentTime);
			ps.setString(3, bean.getCreated_by());
			ps.setString(4, bean.getAbout());
			ps.setInt(5, bean.getId());
			ps.executeUpdate();
			// System.out.println("record updated");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public void deleteBrandName(BrandBeans bean) {
		try {
			PreparedStatement ps = con
					.prepareStatement("delete from brand_names where id = ?");
			ps.setInt(1, bean.getId());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
