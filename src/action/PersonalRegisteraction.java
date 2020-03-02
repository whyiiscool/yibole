package action;

import com.opensymphony.xwork2.ActionSupport;

import dao.JianliDao;
import dao.PersonalDao;

public class PersonalRegisteraction extends ActionSupport{
	private String username;
	private String realname;
	private String userpwd;
	private String usernum;
	private String email;
	private String sex;


	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	public String getUsernum() {
		return usernum;
	}
	public void setUsernum(String usernum) {
		this.usernum = usernum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	
	
	private String yusername;
	private String reuserpwd;
	
	public String getYusername() {
		return yusername;
	}
	public void setYusername(String yusername) {
		this.yusername = yusername;
	}
	
	public String getReuserpwd() {
		return reuserpwd;
	}
	public void setReuserpwd(String reuserpwd) {
		this.reuserpwd = reuserpwd;
	}
	
	

	public String execute() throws Exception{
		PersonalDao pd=new PersonalDao();
		if(pd.register(username,realname,userpwd,usernum,email,sex)){
			return SUCCESS;
		}
		else
		return "failure";
	}
	
	
	
	public String resetp() throws Exception{
		JianliDao jl=new JianliDao();
		boolean re=jl.repassword(yusername,reuserpwd);
		if(re)
			return SUCCESS;
		
		else
		return "failure";
		
	}
	
	
}
