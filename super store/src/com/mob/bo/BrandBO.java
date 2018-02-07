package com.mob.bo;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mob.beans.BrandBeans;
import com.mob.dao.BrandDAO;
import com.mob.daoImpl.BrandDAOImpl;

public class BrandBO {

	public void saveBrand(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			boolean flag = false;
			BrandBeans bean = new BrandBeans();
			bean.setCategory_name(request.getParameter("brandname"));
			bean.setAbout(request.getParameter("comment"));
			bean.setCreated_by(request.getParameter("loginId"));

			BrandDAO dao = new BrandDAOImpl();
			dao.saveBrandName(bean);
			flag = true;
			if (flag == true) {
				session.setAttribute("smsg",
						"You have successfully saved record into the database!");
				RequestDispatcher rd = request
						.getRequestDispatcher("mobile-company-list.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("smsg", "something went wrong!");
				RequestDispatcher rd = request
						.getRequestDispatcher("add-brand.jsp");
				rd.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateBrand(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			boolean flag = false;
			BrandBeans bean = new BrandBeans();
			bean.setCategory_name(request.getParameter("brandname"));
			bean.setAbout(request.getParameter("comment"));
			bean.setCreated_by(request.getParameter("loginId"));
			int pk_Id = Integer.parseInt(request.getParameter("unqId"));
			bean.setId(pk_Id);

			BrandDAO dao = new BrandDAOImpl();
			dao.updateBrandName(bean);
			flag = true;
			if (flag == true) {
				session.setAttribute("smsg",
						"You have successfully updated record into the database!");
				RequestDispatcher rd = request
						.getRequestDispatcher("mobile-company-list.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("smsg", "something went wrong!");
				RequestDispatcher rd = request
						.getRequestDispatcher("mob-brand-edit.jsp?uId=" + pk_Id);
				rd.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteBrand(HttpServletRequest request,
			HttpServletResponse response) {
		try {
			HttpSession session = request.getSession();
			boolean flag = false;
			BrandBeans bean = new BrandBeans();
			int id = Integer.parseInt(request.getParameter("deleteId"));
			bean.setId(id);

			BrandDAO dao = new BrandDAOImpl();
			dao.deleteBrandName(bean);
			flag = true;
			if (flag == true) {
				session.setAttribute("smsg",
						"You have successfully deleted record from the database!");
				RequestDispatcher rd = request
						.getRequestDispatcher("mobile-company-list.jsp");
				rd.forward(request, response);
			} else {
				session.setAttribute("smsg", "something went wrong!");
				RequestDispatcher rd = request
						.getRequestDispatcher("mobile-company-list.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
