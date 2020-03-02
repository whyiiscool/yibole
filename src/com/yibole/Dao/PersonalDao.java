package com.yibole.Dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Employer;





public class PersonalDao {
	
	public Employer Flogin(String filmid,String firmpwd) throws Exception{
		Session session=null;
		Employer em = null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
//	    System.out.println(filmid);
//	    System.out.print(firmpwd);
		Query q=session.createQuery("from Employer where filmid=? and firmpwd=? ");
//		q.setString(0, filmid);
//		q.setString(1, firmpwd);
		q.setParameter(0, filmid);
		q.setParameter(1, firmpwd);
		em=(Employer) q.uniqueResult();
		HttpServletRequest request = ServletActionContext.getRequest(); 
		HttpSession ses = request.getSession();
		ses.setAttribute("em", em);
		t.commit();
		session.close();
		return em;
		
	}
	
	
//	public boolean login(String username,String password){
//		Session session=null;
//		Employee ep = null;
//		Transaction t=null;
//		try{
//			session=HibernateSessionFactory.getSession();
//		    t=session.beginTransaction();
//			Query q=session.createQuery("from Employee where userName=?");
//			q.setParameter(0, username);
//			ep=(Employee)q.uniqueResult();
//		    t.commit();
//		
//		}
//		catch (Exception e){
//			if(t!=null)t.rollback();
//			e.printStackTrace();
//		}
//		finally{
//			session.close();
//		}
//		
//	    if(ep.getUserPwd().equals(password)){
//	    	return true;
//	    }else 
//	    	return false;
//	}
//	
//	public boolean register(String userId,String username,String password,String sex,String userNum,String email){
//		Session session=null;
//		Transaction t1=null;
//		
//		try{
//		session=HibernateSessionFactory.getSession();
//		t1=session.beginTransaction();
//		Employee em=new Employee();
//		em.setUserName(username);
//		em.setUserPwd(password);
//		em.setUserId(userId);
//		em.setSex(sex);
//		em.setUserNum(userNum);
//		em.setEmail(email);
//		session.save(em);
//		t1.commit();
//		
//		session.close();
//		return true;
//		}
//		catch (Exception e){
//			return false;
//		}	
//		
//	}
	
	public boolean Fregister(String filmid,String firmpwd,String place,String filmnum,String fimdata){
		Session session=null;
		Transaction t1=null;
		
		try{
		session=HibernateSessionFactory.getSession();
		t1=session.beginTransaction();
		Employer em=new Employer();
		em.setFilmid(filmid);
		em.setFirmpwd(firmpwd);
		em.setPlace(place);
		em.setFilmnum(filmnum);
		em.setFilmdata(fimdata);
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
