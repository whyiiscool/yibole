package com.ybl.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.EmployerDao;
import com.ybl.dao.impl.EmployerDaoImpl;
import com.ybl.vo.Employer;


public class deleteuser1Action extends ActionSupport{
	private String message;
	private Employer employer;
	public Employer getEmployer() {
		return employer;
	}
	public void setEmployer(Employer employer) {
		this.employer = employer;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String deleteuser() throws Exception{
		System.out.println(employer.getFilmid());
		EmployerDao employerdao=new EmployerDaoImpl();
		employerdao.deleteuser(employer);                                                                
		this.setMessage("É¾³ý³É¹¦");
		return SUCCESS;
		
	}
}