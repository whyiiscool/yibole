package com.ybl.Action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.ZpDao;
import com.ybl.dao.impl.ZpDaoImpl;
import com.ybl.vo.Zp;

public class selectZpAction extends ActionSupport{
	public Zp getZp() {
		return zp;
	}
	public void setZp(Zp zp) {
		this.zp = zp;
	}
	private Zp zp ;
	private String message;
	ZpDao zpDao=new ZpDaoImpl();
	public String selectallZp()throws Exception{					//调用ZpDao的方法查询所有Zp
		List list=zpDao.selectallZp();
		Map request=(Map)ActionContext.getContext().get("request");
	    request.put("list", list);
		Zp em =  (Zp)list.get(0);
		System.out.println(list.size()+"  "+em.getPostid());		
		return SUCCESS;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
}
