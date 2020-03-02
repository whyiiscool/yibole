package com.ybl.vo;

/**
 * Zp entity. @author MyEclipse Persistence Tools
 */

public class Zp implements java.io.Serializable {

	// Fields

	private Integer zpid;
	private String postid;
	private Integer postnum;
	private String filmid;
	private String posttext;

	// Constructors

	/** default constructor */
	public Zp() {
	}

	/** minimal constructor */
	public Zp(String postid) {
		this.postid = postid;
	}

	/** full constructor */
	public Zp(String postid, Integer postnum, String filmid, String posttext) {
		this.postid = postid;
		this.postnum = postnum;
		this.filmid = filmid;
		this.posttext = posttext;
	}

	// Property accessors

	public Integer getZpid() {
		return this.zpid;
	}

	public void setZpid(Integer zpid) {
		this.zpid = zpid;
	}

	public String getPostid() {
		return this.postid;
	}

	public void setPostid(String postid) {
		this.postid = postid;
	}

	public Integer getPostnum() {
		return this.postnum;
	}

	public void setPostnum(Integer postnum) {
		this.postnum = postnum;
	}

	public String getFilmid() {
		return this.filmid;
	}

	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}

	public String getPosttext() {
		return this.posttext;
	}

	public void setPosttext(String posttext) {
		this.posttext = posttext;
	}

}