package com.ybl.Action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.EmployeeDao;
import com.ybl.dao.ResumeDao;
import com.ybl.dao.impl.EmployeeDaoImpl;
import com.ybl.dao.impl.ResumeDaoImpl;
import com.ybl.vo.Resume;

public class ResumeAction extends ActionSupport{
	private Resume resume ;
	public Resume getResume() {
		return resume;
	}
	public void setResume(Resume resume) {
		this.resume = resume;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	private String message;
	ResumeDao resumeDao=new ResumeDaoImpl();
	public String selectallresume()throws Exception{               //调用	ResumeDao的方法查询所有	Resume
		List list=resumeDao.selectallresume();
		Map request=(Map)ActionContext.getContext().get("request");
	    request.put("list", list);
		Resume em =(Resume)list.get(0);
		System.out.println(list.size()+"  "+em.getEmail());		
		return SUCCESS;
	}
	
	
}
