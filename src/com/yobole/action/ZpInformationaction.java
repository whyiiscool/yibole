package com.yobole.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yibole.Dao.PersonalDao;
import com.yibole.Dao.ZpInformationDao;
import com.ybl.vo.Employer;
import com.ybl.vo.Zp;

public class ZpInformationaction extends ActionSupport{
	private String id;
    public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public int getI() {
		return i;
	}


	public void setI(int i) {
		this.i = i;
	}

	private String[] postid;
    private String filmid;
    private String postnum;
    private String posttext;
	private Zp zp;
	
	HttpServletRequest request=ServletActionContext.getRequest();
	int i = Integer.parseInt(request.getParameter("i"));

	
	
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

	public String[] getPostid() {
		return postid;
	}


	public void setPostid(String[] postid) {
		this.postid = postid;
	}


	public String execute() throws Exception{
//		System.out.println(postid[i]);
//		System.out.println(i);
		ZpInformationDao zp=new ZpInformationDao();
		if(zp.selectfrompostid(postid[i], filmid)!=null){
			this.setZp(zp.selectfrompostid(postid[i], filmid));
			return SUCCESS;
		}
		else
		return "failure";
	}
	
	public String mod() throws Exception{
		ZpInformationDao zp=new ZpInformationDao();
		 
		if(zp.mod(id,filmid,postnum,posttext)==true){
			this.setZp(zp.selectfrompostid(id, filmid));
			return SUCCESS;
		}
		else
		return "failure";
	}
}
