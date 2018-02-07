package com.mob.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mob.beans.VendorRegBean;
import com.mob.bo.VendorBO;

/**
 * Servlet implementation class AddVendorCntrl
 */
@WebServlet("/AddVendorCntrl")
public class AddVendorCntrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddVendorCntrl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		boolean flag = false;
		HttpSession session = request.getSession();
		VendorRegBean bean = new VendorRegBean();
		bean.setF_name(request.getParameter("firstname"));
		bean.setL_name(request.getParameter("lastname"));
		bean.setEmail(request.getParameter("useremail"));
		bean.setMob_no(request.getParameter("mobile_phone"));
		bean.setHome_no(request.getParameter("home_phone"));
		bean.setGst_no(request.getParameter("gst_no"));
		bean.setPan_no(request.getParameter("licence_no"));
		bean.setAddress(request.getParameter("comment"));
		bean.setCreated_by(request.getParameter("loginId"));

		VendorBO bo = new VendorBO();
		flag = bo.saveEntry(bean);
		if (flag == true) {
			session.setAttribute("smsg",
					"You have successfully added record into the database!");
			response.sendRedirect("vendor-list.jsp");
		} else {
			session.setAttribute("smsg", "something went wrong!");
			response.sendRedirect("vendor-reg.jsp");
		}
	}

}
