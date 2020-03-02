package com.yobole.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yibole.Dao.EmployerDao;
import com.yibole.Dao.PersonalDao;
import com.yibole.Dao.ZpInformationDao;
import com.ybl.vo.Employer;
import com.ybl.vo.Zp;

public class ModEmployeraction extends ActionSupport{

    private String filmid;
    private String place;
    private String filmnum;
    private String fimdata;
    


	public String getFilmid() {
		return filmid;
	}



	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}



	public String getPlace() {
		return place;
	}



	public void setPlace(String place) {
		this.place = place;
	}



	public String getFilmnum() {
		return filmnum;
	}



	public void setFilmnum(String filmnum) {
		this.filmnum = filmnum;
	}



	public String getFimdata() {
		return fimdata;
	}



	public void setFimdata(String fimdata) {
		this.fimdata = fimdata;
	}



	public String execute() throws Exception{
		EmployerDao zp=new EmployerDao();
		 
		if(zp.mod(filmid,place,filmnum,fimdata)==true){
			return SUCCESS;
		}
		else
		return "failure";
	}
}
