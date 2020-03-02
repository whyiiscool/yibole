package action;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.PersonalDao;

public class PersonalLoginaction extends ActionSupport{
private String username;
private String userpwd;
HttpSession session=ServletActionContext.getRequest().getSession();



public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

public String getUserpwd() {
	return userpwd;
}
public void setUserpwd(String userpwd) {
	this.userpwd = userpwd;
}




public String execute() throws Exception{
	
	session.setAttribute("USERNAME", username);
	
	PersonalDao pd=new PersonalDao();
	
	if(pd.login(username, userpwd)!=null){
		return SUCCESS;
	}
	else
	return "failure";
}
}
