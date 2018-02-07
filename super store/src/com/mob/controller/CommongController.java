package com.mob.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mob.bo.BrandBO;
import com.mob.bo.EmployeeAction;
import com.mob.bo.LoginAction;

/**
 * Servlet implementation class CommongController
 */
@WebServlet("/CommongController")
public class CommongController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	LoginAction loginAction;
	EmployeeAction empAction;
	BrandBO brandAction;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	@Override
	public void init() throws ServletException {
		loginAction = new LoginAction();
		empAction = new EmployeeAction();
		brandAction = new BrandBO();
	}

	public CommongController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		if (request.getServletPath().equals("/DeleteEmployee")) {
			empAction.deleteEmployee(request, response);
		}

		if (request.getServletPath().equals("/DeleteBrand")) {
			brandAction.deleteBrand(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		if (request.getServletPath().equals("/login")) {
			loginAction.loginMethod(request, response);
		}

		// employee save update delete

		if (request.getServletPath().equals("/employeeReg")) {
			empAction.saveEmployee(request, response);
		}

		if (request.getServletPath().equals("/employeeUpdate")) {
			empAction.updateEmployee(request, response);
		}

		if (request.getServletPath().equals("/AddBrandReg")) {
			brandAction.saveBrand(request, response);
		}

		if (request.getServletPath().equals("/UpdateBrand")) {
			brandAction.updateBrand(request, response);
		}
	}

}
