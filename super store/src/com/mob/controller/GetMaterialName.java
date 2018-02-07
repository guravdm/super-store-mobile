package com.mob.controller;

import io.hard.util.DoConnection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetMaterialName
 */
@WebServlet("/GetMaterialName")
public class GetMaterialName extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetMaterialName() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Connection con = DoConnection.getConnection();
		PrintWriter out = response.getWriter();
		String data = "";
		PreparedStatement pt;
		int cnt = 0;
		try {
			pt = con.prepareStatement("select * from material_master where material_name = ?");
			pt.setString(1, request.getParameter("name"));
			// System.out.println(pt + "\n ptttt");
			ResultSet rt = pt.executeQuery();
			cnt = 0;
			while (rt.next()) {
				cnt = cnt + 1;
			}
			data += cnt;
			// System.out.println(cnt + "cnt");
			out.println(data);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
