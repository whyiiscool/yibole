package com.yibole.Dao;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Employer;


public class EmployerDao {
	
	public boolean mod(String filmid,String place,String filmnum,String fimdata) throws Exception{
		Session session=null;
		Employer em = null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
		String hql = "update Employer em set "
				+ "em.place=?,em.filmnum=?,em.filmdata=?"
				+ " where em.filmid=?";
		Query query = session.createQuery(hql);  
		query.setString(0, place);
		query.setString(1, filmnum);
		query.setString(2, fimdata);
		query.setString(3, filmid);
        query.executeUpdate();  
        Query q=session.createQuery("from Employer where filmid=?");
		q.setParameter(0, filmid);
		em=(Employer) q.uniqueResult();
		HttpServletRequest request = ServletActionContext.getRequest(); 
		HttpSession ses = request.getSession();
		ses.setAttribute("em",em );
		t.commit();
		session.close();
		return true;
		
	}
	
	
	public Employer select(String filmid) throws Exception{
		Session session=null;
		Employer em = null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
//	    System.out.println(filmid);
//	    System.out.print(firmpwd);
		Query q=session.createQuery("from Employer where filmid=?");
//		q.setString(0, filmid);
//		q.setString(1, firmpwd);
		q.setParameter(0, filmid);
		em=(Employer) q.uniqueResult();
//		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
//		ses.setAttribute("em", em);
		t.commit();
		session.close();
		return em;
		
	}
}
