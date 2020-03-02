package com.ybl.Action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.EmployerDao;
import com.ybl.dao.impl.EmployerDaoImpl;
import com.ybl.vo.Employer;


public class employerAction extends ActionSupport{
	private Employer employer ;
	private String message;
	EmployerDao employerDao=new EmployerDaoImpl();
	public String selectalluser()throws Exception{					//调用EmployeeDao的方法查询所有Employee
		List list=employerDao.selectalluser();
		Map request=(Map)ActionContext.getContext().get("request");
	    request.put("list", list);
		Employer em =  (Employer)list.get(0);
		System.out.println(list.size()+"  "+em.getFilmnum());		
		return SUCCESS;
	}
	public Employer getEmployer() {
		return employer;
	}
	public void setEmployee(Employer employer) {
		this.employer = employer;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
