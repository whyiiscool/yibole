package com.yobole.action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.yibole.Dao.MessageDao;
import com.yibole.Dao.PersonalDao;
import com.yibole.Dao.ZpInformationDao;
import com.ybl.vo.Employer;
import com.ybl.vo.Zp;

public class MessageAction extends ActionSupport{

	private String time;
	private String content;
	private String getter;
	private String sender;

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getGetter() {
		return getter;
	}

	public void setGetter(String getter) {
		this.getter = getter;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String execute() throws Exception{
		MessageDao dao = new MessageDao();
		if(dao.save(time, content, getter, sender)==true){
			return SUCCESS;
		}
		else
		return "failure";
	}
}
