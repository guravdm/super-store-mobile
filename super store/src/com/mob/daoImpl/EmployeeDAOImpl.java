package com.mob.daoImpl;

import io.hard.util.DoConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.mob.beans.EmployeeBeans;
import com.mob.dao.EmployeeDAO;

public class EmployeeDAOImpl implements EmployeeDAO {
	Connection con = DoConnection.getConnection();

	@Override
	public void saveEmployee(EmployeeBeans bean) {
		try {
			Date dtTime = new Date();

			SimpleDateFormat curTime = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String timeStamp = curTime.format(dtTime);

			PreparedStatement ps = con
					.prepareStatement("insert into employee_master (username, password, role, Name, address, mobileno, created_by, created_time, update_time) values (?, ?, ?, ?, ?, ?, ?, ?, ?)");
			ps.setString(1, bean.getUsername());
			ps.setString(2, bean.getPassword());
			ps.setString(3, bean.getRole());
			ps.setString(4, bean.getName());
			ps.setString(5, bean.getAddress());
			ps.setString(6, bean.getMobileno());
			ps.setString(7, bean.getCreated_by());
			ps.setString(8, timeStamp);
			ps.setString(9, timeStamp);
			ps.executeUpdate();
			// System.out.println("\n employee saved!");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void updateEmployee(EmployeeBeans bean) {
		try {
			Date dtTime = new Date();

			SimpleDateFormat curTime = new SimpleDateFormat(
					"yyyy-MM-dd HH:mm:ss");
			String timeStamp = curTime.format(dtTime);
			PreparedStatement ps = con
					.prepareStatement("update employee_master set username = ?, password = ?, role = ?, Name = ?, address = ?, mobileno = ?, created_by = ?, update_time = ? where id = ?");
			ps.setString(1, bean.getUsername());
			ps.setString(2, bean.getPassword());
			ps.setString(3, bean.getRole());
			ps.setString(4, bean.getName());
			ps.setString(5, bean.getAddress());
			ps.setString(6, bean.getMobileno());
			ps.setString(7, bean.getCreated_by());
			ps.setString(8, timeStamp);
			ps.setInt(9, bean.getId());
			ps.executeUpdate();
			// System.out.println("\n Employee record updated");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void deleteEmployee(EmployeeBeans bean) {
		try {
			PreparedStatement ps = con
					.prepareStatement("delete from employee_master where id = ?");
			ps.setInt(1, bean.getId());
			ps.executeUpdate();
			// System.out.println("\n employee record deleted! ");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
