package dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Employee;





public class PersonalDao {
	
	public Employee login(String username,String userpwd){
		Session session=null;
		Employee ep = null;
		Transaction t=null;
		System.out.println(username);
		System.out.println(userpwd);
		try{
			session=HibernateSessionFactory.getSession();
		    t=session.beginTransaction();
			Query q=session.createQuery("from Employee where username=? and userpwd=?");
			q.setParameter(0, username);
			q.setParameter(1, userpwd);
			ep=(Employee)q.uniqueResult();
			HttpServletRequest request = ServletActionContext.getRequest(); 
			HttpSession ses = request.getSession();
			ses.setAttribute("ep", ep);
		    t.commit();
		
		}
		catch (Exception e){
			if(t!=null)t.rollback();
			e.printStackTrace();
		}
		finally{
			session.close();
		}
	    	return ep;
	}
	
	public boolean register(String username,String realname,String userpwd,String usernum,String email,String sex){
		Session session=null;
		Transaction t1=null;
		
		try{
		session=HibernateSessionFactory.getSession();
		t1=session.beginTransaction();
		Employee em=new Employee();
		em.setUsername(username);;
		em.setRealname(realname);
		em.setUserpwd(userpwd);
		em.setUsernum(usernum);
		em.setEmail(email);
		em.setSex(sex);
		session.save(em);
		t1.commit();
		
		session.close();
		return true;
		}
		catch (Exception e){
			return false;
		}	
		
	}
	
}
