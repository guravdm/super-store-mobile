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
 * Servlet implementation class UpdateVendorCntrl
 */
@WebServlet("/UpdateVendorCntrl")
public class UpdateVendorCntrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateVendorCntrl() {
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
		Integer pk_id = Integer.parseInt(request.getParameter("pri_id"));
		bean.setId(pk_id);
		VendorBO bo = new VendorBO();
		flag = bo.updateEntry(bean);
		if (flag == true) {
			session.setAttribute("smsg",
					"You have successfully updated record into the database!");
			response.sendRedirect("vendor-list.jsp");
		} else {
			session.setAttribute("smsg", "something went wrong!");
			response.sendRedirect("vendor-edit.jsp?uId=" + pk_id);
		}
	}

}
