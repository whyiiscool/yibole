package com.ybl.vo;

/**
 * Employer entity. @author MyEclipse Persistence Tools
 */

public class Employer implements java.io.Serializable {

	// Fields

	private String filmid;
	private String firmpwd;
	private String place;
	private String filmnum;
	private String filmdata;

	// Constructors

	/** default constructor */
	public Employer() {
	}

	/** minimal constructor */
	public Employer(String filmid) {
		this.filmid = filmid;
	}

	/** full constructor */
	public Employer(String filmid, String firmpwd, String place,
			String filmnum, String filmdata) {
		this.filmid = filmid;
		this.firmpwd = firmpwd;
		this.place = place;
		this.filmnum = filmnum;
		this.filmdata = filmdata;
	}

	// Property accessors

	public String getFilmid() {
		return this.filmid;
	}

	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}

	public String getFirmpwd() {
		return this.firmpwd;
	}

	public void setFirmpwd(String firmpwd) {
		this.firmpwd = firmpwd;
	}

	public String getPlace() {
		return this.place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getFilmnum() {
		return this.filmnum;
	}

	public void setFilmnum(String filmnum) {
		this.filmnum = filmnum;
	}

	public String getFilmdata() {
		return this.filmdata;
	}

	public void setFilmdata(String filmdata) {
		this.filmdata = filmdata;
	}

}