package com.ybl.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.ResumeDao;
import com.ybl.dao.impl.ResumeDaoImpl;
import com.ybl.vo.Resume;

public class Deleteresume extends ActionSupport{
	private String message;
	private Resume resume;
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Resume getResume() {
		return resume;
	}
	public void setResume(Resume resume) {
		this.resume = resume;
	}
		
	public String deleteresume() throws Exception{
		System.out.println(resume.getId());
		ResumeDao resumedao=new ResumeDaoImpl();
		resumedao.deleteresume(resume);                                                               
		this.setMessage("É¾³ý³É¹¦");
		return SUCCESS;
	}
}
