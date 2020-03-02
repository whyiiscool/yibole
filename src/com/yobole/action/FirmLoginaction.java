package com.yobole.action;

import com.opensymphony.xwork2.ActionSupport;
import com.yibole.Dao.PersonalDao;
import com.ybl.vo.Employer;

public class FirmLoginaction extends ActionSupport{
	private String firmpwd;
	private String filmid;
	private Employer em;

	public Employer getEm() {
		return em;
	}

	public void setEm(Employer em) {
		this.em = em;
	}

	public String getFirmpwd() {
		return firmpwd;
	}

	public void setFirmpwd(String firmpwd) {
		this.firmpwd = firmpwd;
	}

	public String getFilmid() {
		return filmid;
	}

	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}


	public String execute() throws Exception{
		PersonalDao pd=new PersonalDao();
		 
		if(pd.Flogin(filmid,firmpwd)!=null){
			this.setEm(pd.Flogin(filmid, firmpwd));
			return SUCCESS;
		}
		else
		return "failure";
	}
}
