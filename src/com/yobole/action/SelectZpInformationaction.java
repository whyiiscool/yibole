package com.yobole.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yibole.Dao.PersonalDao;
import com.yibole.Dao.ZpInformationDao;
import com.ybl.vo.Employer;
import com.ybl.vo.Zp;

public class SelectZpInformationaction extends ActionSupport{

	private String postid;
	private String filmid;


	public String getFilmid() {
		return filmid;
	}


	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}


	public String getPostid() {
		return postid;
	}


	public void setPostid(String postid) {
		this.postid = postid;
	}


	public String execute() throws Exception{
		ZpInformationDao zp=new ZpInformationDao();
		 
		if(zp.selectfrompostidandfilmid(postid, filmid) != null){
			return SUCCESS;
		}
		else
		return "failure";
	}
}
