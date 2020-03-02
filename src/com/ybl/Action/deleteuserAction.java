package com.ybl.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.EmployeeDao;
import com.ybl.dao.impl.EmployeeDaoImpl;
import com.ybl.vo.Employee;

public class deleteuserAction extends ActionSupport{
	private String message;
	private Employee employee;
	public Employee getEmployee() {
		return employee;
	}
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String deleteuser() throws Exception{
		System.out.println(employee.getRealname());
		EmployeeDao employeedao=new EmployeeDaoImpl();
		employeedao.deleteuser(employee);                                                                
		this.setMessage("É¾³ý³É¹¦");
		return SUCCESS;
		
	}
}
