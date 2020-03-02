package com.ybl.Action;

import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.ZpDao;
import com.ybl.dao.impl.ZpDaoImpl;
import com.ybl.vo.Zp;

public class ZpAction extends ActionSupport{
	private String message;
	private Zp zp;
	public Zp getZp() {
		return zp;
	}
	public void setZp(Zp zp) {
		this.zp = zp;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String deletezp() throws Exception{
		System.out.println(zp.getZpid());
		ZpDao zpdao=new ZpDaoImpl();
		zpdao.deletezp(zp);                                                                
		this.setMessage("É¾³ý³É¹¦");
		return SUCCESS;
		
	}
}
