package com.ybl.vo;

/**
 * Resumecollect entity. @author MyEclipse Persistence Tools
 */

public class Resumecollect implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String postid;
	private String realname;
	private String filmid;

	// Constructors

	/** default constructor */
	public Resumecollect() {
	}

	/** minimal constructor */
	public Resumecollect(String username) {
		this.username = username;
	}

	/** full constructor */
	public Resumecollect(String username, String postid, String realname,
			String filmid) {
		this.username = username;
		this.postid = postid;
		this.realname = realname;
		this.filmid = filmid;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPostid() {
		return this.postid;
	}

	public void setPostid(String postid) {
		this.postid = postid;
	}

	public String getRealname() {
		return this.realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getFilmid() {
		return this.filmid;
	}

	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}

}