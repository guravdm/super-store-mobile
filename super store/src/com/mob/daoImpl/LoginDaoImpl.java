package com.mob.daoImpl;

import io.hard.util.DoConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mob.dao.LoginDAO;

public class LoginDaoImpl implements LoginDAO {

	@Override
	public boolean loginCred(String uname, String pass) {
		Connection con = DoConnection.getConnection();
		boolean flag = false;

		try {
			PreparedStatement ps = con
					.prepareStatement("Select * from employee_master  where username = ? and password = ?");
			ps.setString(1, uname);
			ps.setString(2, pass);
			ResultSet rs = ps.executeQuery();
			flag = rs.next();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return flag;
	}

}
