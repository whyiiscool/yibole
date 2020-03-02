package com.yobole.action;

import com.opensymphony.xwork2.ActionSupport;
import com.yibole.Dao.PersonalDao;

public class FirmRegisteraction extends ActionSupport{
	
	private String filmid;
    private String firmpwd;
    private String place;
    private String filmnum;
    private String fimdata;
	
	public String getFilmid() {
		return filmid;
	}

	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}

	public String getFirmpwd() {
		return firmpwd;
	}

	public void setFirmpwd(String firmpwd) {
		this.firmpwd = firmpwd;
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
		PersonalDao pd=new PersonalDao();
		if(pd.Fregister(filmid, firmpwd, place, filmnum, fimdata)){
			return SUCCESS;
		}
		else
		return "failure";
	}
}
