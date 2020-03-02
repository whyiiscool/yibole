package com.ybl.Action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.EmployeeDao;
import com.ybl.dao.EmployerDao;
import com.ybl.dao.impl.EmployeeDaoImpl;
import com.ybl.dao.impl.EmployerDaoImpl;
import com.ybl.vo.Employee;
import com.ybl.vo.Employer;

public class selectuser1Action extends ActionSupport{
	private Employer employer ;
	private String message;
	public String xx;
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
	public String getXx() {
		return xx;
	}
	public void setXx(String xx) {
		this.xx = xx;
	}

	EmployerDao employerDao=new EmployerDaoImpl();
	public String selectuser()throws Exception{
		//调用EmployeeDao的方法查询所有Employee
		List list=employerDao.selectuser(xx);
		Map request=(Map)ActionContext.getContext().get("request");
	    request.put("list", list);
//		Employee em =  (Employee)list1.get(0);
		System.out.println(list.size());		
		return SUCCESS;
	}
}
