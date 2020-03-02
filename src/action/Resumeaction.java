package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ybl.vo.Resume;

import dao.JianliDao;

public class Resumeaction extends ActionSupport{
private	Resume re;

public Resume getRe() {
	return re;
}

public void setRe(Resume re) {
	this.re = re;
}

public String execute() throws Exception{
	HttpServletRequest request = ServletActionContext.getRequest();
	String s = request.getParameter("sub");
	System.out.println(s);
	
	HttpSession session=ServletActionContext.getRequest().getSession();	
	
	
	
	JianliDao jl=new JianliDao();
	
	
	
	if(s.equals("投递简历")){
		
	re.setUsername((String)session.getAttribute("USERNAME"));
	re.setPostid((String)session.getAttribute("POSTID"));
	re.setFilmid((String)session.getAttribute("FILMID"));
		
/*		re.setUsername("李四");
		re.setPostid("2");
		re.setFilmid("2");*/
		
//	Resume newre = null;
//	newre.setUsername(re.getUsername());
//	newre.setPostid(re.getPostid());
//	newre.setFilmid(re.getFilmid());
//   jl.alterjianli(newre);
		
		
    jl.alterjianli(re);
	session.removeAttribute("RE");
	session.setAttribute("RE", re);
	
	
	
	}
//	else if(s.equals("修改简历")){
//		
//		jl.alterjianli(re);
//		session.removeAttribute("RE");
//		session.setAttribute("RE", re);
//		
//		
else if(s.equals("删除简历")){
		boolean rest=jl.deletejianlibyre(re);
		if(!rest) return "failure";
	}else if(s.equals("投递记录")){
		List<Resume> rest=(List) jl.selectjianli();
		session.removeAttribute("RE");
		session.setAttribute("RE", rest);
	}
	return SUCCESS;
	
	

}

//public String updatejianli() throws Exception{
//	JianliDao jl=new JianliDao();
//	HttpSession session=ServletActionContext.getRequest().getSession();
//	
//	
//	jl.insertjianli(re);
//	
//	
//	session.removeAttribute("RE");
//	session.setAttribute("RE", re);
//	return SUCCESS;
//	
//}

}
