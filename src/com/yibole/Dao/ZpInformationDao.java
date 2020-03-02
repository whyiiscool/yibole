package com.yibole.Dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Zp;





public class ZpInformationDao {
	
	public List select(String filmid) throws Exception{
		Session session=null;
		Zp em = null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
//	    System.out.println(filmid);
		Query q=session.createQuery("from Zp where filmid=?");
		q.setString(0, filmid);
		List<Zp> l = q.list();
//		System.out.println(list);
//		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
//		request.setAttribute("zp", zp);
		t.commit();
		session.close();
		return l;
		
	}
	
	
	public Zp selectfrompostid(String postid,String filmid) throws Exception{
		Session session=null;
//		Zp em = null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
//	    System.out.println(filmid);
		Query q=session.createQuery("from Zp where postid=? and filmid=?");
		q.setString(0, postid);
		q.setString(1, filmid);
		Zp zp = (Zp) q.uniqueResult();
//		System.out.println(list);
		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
		request.setAttribute("zp", zp);
		t.commit();
		session.close();
		return zp;
		
	}
	
	public Zp selectfromid(String id,String filmid) throws Exception{
		Session session=null;
//		Zp em = null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
//	    System.out.println(filmid);
		Query q=session.createQuery("from Zp where postid=? and filmid=?");
		q.setString(0, id);
		q.setString(1, filmid);
		Zp zp = (Zp) q.uniqueResult();
//		System.out.println(list);
		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
		request.setAttribute("zp", zp);
		t.commit();
		session.close();
		return zp;
		
	}

	public boolean mod(String postid,String filmid,String postnum,String posttext) throws Exception{
		Session session=null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
		String hql = "update Zp zp set "
				+ "zp.postnum=?,zp.posttext=?"
				+ " where zp.filmid=? and postid=?";
		Query query = session.createQuery(hql);  
		query.setString(0, postnum);
		query.setString(1, posttext);
		query.setString(2, filmid);
		query.setString(3, postid);
		int i = query.executeUpdate();  
		System.out.print(i);
//		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
//		request.setAttribute("zp", zp);
		t.commit();
		session.close();
		return true;
		
	}
	
	
	public boolean add(String postid,String filmid,String postnum,String posttext) throws Exception{
		Session session=null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
		Zp z = new Zp();
		z.setFilmid(filmid);
		z.setPostid(postid);
		z.setPostnum(Integer.parseInt(postnum));
		z.setPosttext(posttext);
		session.save(z);
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
	
	public boolean delete(String postid){
		Session session=null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
		String hql = "delete from Zp zp where zp.postid=?";
		Query query = session.createQuery(hql);  
		query.setString(0, postid);
		query.executeUpdate();  
		t.commit();  
		session.close();
		return true;
	}
	
	public List selectfrompostidandfilmid(String postid,String filmid) throws Exception{
		Session session=null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
		Query q=session.createQuery("from Zp zp where filmid=? and zp.postid like :id");
		q.setString(0, filmid);
		q.setString("id", "%"+postid+"%");
		List list = q.list();
		t.commit();
		session.close();
		return list;
		
	}
}
