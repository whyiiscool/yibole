package com.yobole.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yibole.Dao.PersonalDao;
import com.yibole.Dao.ZpInformationDao;
import com.ybl.vo.Employer;
import com.ybl.vo.Zp;

public class ModZpInformationaction extends ActionSupport{

	private String postid;
    private String filmid;
    private String postnum;
    private String posttext;
	private Zp zp;
	
    public String getPostnum() {
		return postnum;
	}


	public void setPostnum(String postnum) {
		this.postnum = postnum;
	}


	public String getPosttext() {
		return posttext;
	}


	public void setPosttext(String posttext) {
		this.posttext = posttext;
	}


	public Zp getZp() {
		return zp;
	}


	public void setZp(Zp zp) {
		this.zp = zp;
	}


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
		 
		if(zp.mod(postid,filmid,postnum,posttext)==true){
			this.setZp(zp.selectfrompostid(postid, filmid));
			return SUCCESS;
		}
		else
		return "failure";
	}
}
