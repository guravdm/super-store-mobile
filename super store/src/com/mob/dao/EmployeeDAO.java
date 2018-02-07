package com.mob.dao;

import com.mob.beans.EmployeeBeans;


public interface EmployeeDAO {

	void saveEmployee(EmployeeBeans bean);

	void updateEmployee(EmployeeBeans bean);

	void deleteEmployee(EmployeeBeans bean);

}
