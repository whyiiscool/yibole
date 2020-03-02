package com.ybl.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.EmployeeDao;
import com.ybl.dao.EmployerDao;
import com.ybl.dao.impl.EmployeeDaoImpl;
import com.ybl.dao.impl.EmployerDaoImpl;
import com.ybl.vo.Employee;
import com.ybl.vo.Employer;

public class updateuser1Action extends ActionSupport{
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	private String message;
	private Employer employer;

	public Employer getEmployer() {
		return employer;
	}
	public void setEmployer(Employer employer) {
		this.employer = employer;
	}
	public String updateuser() throws Exception{
		System.out.println(employer.getFilmid());
		EmployerDao employerdao=new EmployerDaoImpl();
		employerdao.updateuser(employer);
		return SUCCESS;
		
	}
}
