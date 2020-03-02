package com.ybl.vo;

/**
 * Message entity. @author MyEclipse Persistence Tools
 */

public class Message implements java.io.Serializable {

	// Fields

	private Integer id;
	private String time;
	private String content;
	private String getter;
	private String sender;

	// Constructors

	/** default constructor */
	public Message() {
	}

	/** full constructor */
	public Message(String time, String content, String getter, String sender) {
		this.time = time;
		this.content = content;
		this.getter = getter;
		this.sender = sender;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTime() {
		return this.time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getGetter() {
		return this.getter;
	}

	public void setGetter(String getter) {
		this.getter = getter;
	}

	public String getSender() {
		return this.sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

}