package com.ybl.Action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.LoginDao;
import com.ybl.dao.impl.LoginDaoImpl;
import com.ybl.vo.Admin;



public class LoginAction extends ActionSupport {	
	private Admin mid;
	private String message;	
	public String execute() throws Exception{
		//创建DAO接口对象，通过调用接口中的checkLogin方法实现登陆验证
	
		LoginDao loginDao=new LoginDaoImpl();
		
		Admin an=loginDao.checkLogin(mid.getId(), mid.getPasswd());
		System.out.println("123456");
		if(an!=null){				//如果登陆成功
		Map session=ActionContext.getContext().getSession();
			session.put("mid",1);	
			return SUCCESS;
			//登陆成功把信息保存在session中
		}else{
			return INPUT;			//验证失败返回ERROR
		}
	}
	
	//验证登录名贺密码是否为空
	public void validate(){
		if(mid.getId()==null||mid.getId().equals("")){
			this.addFieldError("mid.id","用户名不能为空");
		}else if(mid.getPasswd()==null||mid.getPasswd().equals("")){
			this.addFieldError("mid.pwd", "密码不能为空");
		}
	}
	
	
	
	public Admin getMid() {
		return mid;
	}
	public void setMid(Admin mid) {
		this.mid = mid;
	}

	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
