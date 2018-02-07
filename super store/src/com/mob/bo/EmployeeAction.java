package com.mob.bo;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mob.beans.EmployeeBeans;
import com.mob.dao.EmployeeDAO;
import com.mob.daoImpl.EmployeeDAOImpl;

public class EmployeeAction {

	public void saveEmployee(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			boolean flag = false;

			EmployeeBeans bean = new EmployeeBeans();
			bean.setName(request.getParameter("firstname"));
			bean.setUsername(request.getParameter("username"));
			bean.setRole(request.getParameter("role"));
			bean.setPassword(request.getParameter("password"));
			bean.setMobileno(request.getParameter("mobileno"));
			bean.setAddress(request.getParameter("comment"));
			bean.setCreated_by(request.getParameter("loginId"));

			EmployeeDAO dao = new EmployeeDAOImpl();
			dao.saveEmployee(bean);
			flag = true;
			if (flag == true) {
				session.setAttribute("smsg",
						"You have successfully added record into the database!");
				RequestDispatcher rd = request
						.getRequestDispatcher("employee-list.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("smsg", "something went wrong!");
				RequestDispatcher rd = request
						.getRequestDispatcher("emp-reg.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void updateEmployee(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			boolean flag = false;

			EmployeeBeans bean = new EmployeeBeans();
			bean.setName(request.getParameter("firstname"));
			bean.setUsername(request.getParameter("username"));
			bean.setRole(request.getParameter("role"));
			bean.setPassword(request.getParameter("password"));
			bean.setMobileno(request.getParameter("mobileno"));
			bean.setAddress(request.getParameter("comment"));
			bean.setCreated_by(request.getParameter("loginId"));
			int empId = Integer.parseInt(request.getParameter("empId"));
			bean.setId(empId);

			EmployeeDAO dao = new EmployeeDAOImpl();
			dao.updateEmployee(bean);
			flag = true;
			if (flag == true) {
				session.setAttribute("smsg",
						"You have successfully updated record into the database!");
				RequestDispatcher rd = request
						.getRequestDispatcher("employee-list.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("smsg", "something went wrong!");
				RequestDispatcher rd = request
						.getRequestDispatcher("emp-edit.jsp?uId=" + empId);
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void deleteEmployee(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			boolean flag = false;
			EmployeeBeans bean = new EmployeeBeans();
			int eId = Integer.parseInt(request.getParameter("deleteId"));
			bean.setId(eId);

			bean.setCreated_by(request.getParameter("loginId"));

			EmployeeDAO dao = new EmployeeDAOImpl();
			dao.deleteEmployee(bean);
			flag = true;
			if (flag == true) {
				session.setAttribute("smsg",
						"You have successfully deleted record!");
				RequestDispatcher rd = request
						.getRequestDispatcher("employee-list.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("smsg", "something went wrong!");
				RequestDispatcher rd = request
						.getRequestDispatcher("employee-list.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
