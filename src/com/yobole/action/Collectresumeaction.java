package com.yobole.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yibole.Dao.PersonalDao;
import com.yibole.Dao.ResumeDao;
import com.yibole.Dao.ZpInformationDao;
import com.ybl.vo.Employer;
import com.ybl.vo.Zp;

public class Collectresumeaction extends ActionSupport{

	private String filmid;
	private String realname;
	private String postid;
	private String userid;

	



	public String getFilmid() {
		return filmid;
	}





	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}





	public String getRealname() {
		return realname;
	}





	public void setRealname(String realname) {
		this.realname = realname;
	}





	public String getPostid() {
		return postid;
	}





	public void setPostid(String postid) {
		this.postid = postid;
	}





	public String getUserid() {
		return userid;
	}





	public void setUserid(String userid) {
		this.userid = userid;
	}





	public String execute() throws Exception{
		ResumeDao dao=new ResumeDao();
		 
		if(dao.add(postid,filmid,realname,userid)==true){
//			this.setZp(zp.selectfrompostid(postid, filmid));
			return SUCCESS;
		}
		else
		return "failure";
	}
	
	public String del() throws Exception{
		ResumeDao dao=new ResumeDao();
		 
		if(dao.delete(postid,filmid,realname,userid)==true){
//			this.setZp(zp.selectfrompostid(postid, filmid));
			return SUCCESS;
		}
		else
		return "failure";
	}
}
