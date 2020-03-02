package com.ybl.Action;

import org.hibernate.Query;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.EmployeeDao;
import com.ybl.dao.impl.EmployeeDaoImpl;
import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Employee;

public class updatuserAction extends ActionSupport{
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	private String message;
	private Employee employee;
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public String updateuser() throws Exception{
		System.out.println(employee.getUsername());
		EmployeeDao employeedao=new EmployeeDaoImpl();
		employeedao.updateuser(employee);
		return SUCCESS;
		
	}
	
	
}
