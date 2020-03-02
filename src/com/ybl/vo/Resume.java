package com.ybl.vo;

/**
 * Resume entity. @author MyEclipse Persistence Tools
 */

public class Resume implements java.io.Serializable {

	// Fields

	private Integer id;
	private String relname;
	private String filmid;
	private String experience;
	private String education;
	private String email;
	private String usernum;
	private String liveplace;
	private String brith;
	private Integer age;
	private String sex;
	private String postid;
	private String username;

	// Constructors

	/** default constructor */
	public Resume() {
	}

	/** full constructor */
	public Resume(String relname, String filmid, String experience,
			String education, String email, String usernum, String liveplace,
			String brith, Integer age, String sex, String postid,
			String username) {
		this.relname = relname;
		this.filmid = filmid;
		this.experience = experience;
		this.education = education;
		this.email = email;
		this.usernum = usernum;
		this.liveplace = liveplace;
		this.brith = brith;
		this.age = age;
		this.sex = sex;
		this.postid = postid;
		this.username = username;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRelname() {
		return this.relname;
	}

	public void setRelname(String relname) {
		this.relname = relname;
	}

	public String getFilmid() {
		return this.filmid;
	}

	public void setFilmid(String filmid) {
		this.filmid = filmid;
	}

	public String getExperience() {
		return this.experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getEducation() {
		return this.education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUsernum() {
		return this.usernum;
	}

	public void setUsernum(String usernum) {
		this.usernum = usernum;
	}

	public String getLiveplace() {
		return this.liveplace;
	}

	public void setLiveplace(String liveplace) {
		this.liveplace = liveplace;
	}

	public String getBrith() {
		return this.brith;
	}

	public void setBrith(String brith) {
		this.brith = brith;
	}

	public Integer getAge() {
		return this.age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPostid() {
		return this.postid;
	}

	public void setPostid(String postid) {
		this.postid = postid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}