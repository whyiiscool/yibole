package com.yibole.Dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Employee;
import com.ybl.vo.Employer;
import com.ybl.vo.Resume;
import com.ybl.vo.Resumecollect;
import com.ybl.vo.Zp;


public class ResumeDao {
	
	public List selectfromfilmid(String filmid) throws Exception{
		Session session=null;
		Employer em = null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
//	    System.out.println(filmid);
//	    System.out.print(firmpwd);
		Query q=session.createQuery("from Resume where filmid=?");
		q.setParameter(0, filmid);
		List<Resume> list = q.list();
//		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
//		ses.setAttribute("em", em);
		t.commit();
		session.close();
		return list;
		
	}
	
	public List selectfromname(String name) throws Exception{//通过用户名查看简历
		Session session=null;
		Employee em = null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
//	    System.out.println(name);
//	    System.out.print(firmpwd);
		Query q=session.createQuery("from Resume where username=?");
		q.setParameter(0, name);
		List<Resume> list = q.list();
//		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
//		ses.setAttribute("em", em);
		System.out.print(list);
		t.commit();
		session.close();
		return list;
		
	}
	
	public List selectallZP()throws Exception{
		Session session=null;
		Zp zp=null;
		Transaction t=null;
		session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
		Query q=session.createQuery("from Zp");
		List<Resume> list = q.list();
		t.commit();
		session.close();
		return list;
	}
	
	public Resume selectfrompostid(String filmid,String realname,String postid) throws Exception{
		Session session=null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
//	    System.out.println(filmid);
//	    System.out.print(firmpwd);
		Query q=session.createQuery("from Resume where filmid=? and relname=? and postid=?");
		q.setParameter(0, filmid);
		q.setParameter(1, realname);
		q.setParameter(2, postid);
		Resume res = (Resume) q.uniqueResult();
//		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
//		ses.setAttribute("em", em);
		t.commit();
		session.close();
		return res;
		
	}
	
	

	
	public boolean add(String postid,String filmid,String realname,String username) throws Exception{
		Session session=null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
		Resumecollect ec = new Resumecollect(username, postid, realname, filmid);
		session.save(ec);
//		Query q=session.createQuery("from Employer where filmid=?");
//		q.setParameter(0, filmid);
//		Employer em=(Employer) q.uniqueResult();
//		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
//		ses.setAttribute("em", em);
		t.commit();
		session.close();
		return true;
		
	}
	
	public List selectcollectfromfilmid(String filmid) throws Exception{
		Session session=null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
//	    System.out.println(filmid);
//	    System.out.print(firmpwd);
		Query q=session.createQuery("from Resumecollect where filmid=?");
		q.setParameter(0, filmid);
		List<Resumecollect> list = q.list();
//		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
//		ses.setAttribute("em", em);
		t.commit();
		session.close();
		return list;
		
	}
	
	public boolean delete(String postid,String filmid,String realname,String username){
		Session session=null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
		String hql = "delete from Resumecollect res where res.postid=? and res.filmid=? and res.realname=? ";
		Query query = session.createQuery(hql);  
		query.setString(0, postid);
		query.setString(1, filmid);
		query.setString(2, realname);
		query.executeUpdate();  
		t.commit();  
		session.close();
		return true;
	}
}
