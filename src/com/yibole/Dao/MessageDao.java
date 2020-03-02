package com.yibole.Dao;

import java.sql.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Employer;
import com.ybl.vo.Message;



public class MessageDao {
	public boolean save(String time,String content,String getter,String sender){
		Session session = HibernateSessionFactory.getSession();
		Transaction t = session.beginTransaction();
        Message mes = new Message(time, content, getter, sender);
		session.save(mes);
		t.commit();
		session.close();
		return true;
	}
	
	public List select(String sender,String getter) throws Exception{
		Session session=null;
		Employer em = null;
		Transaction t=null;
	    session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();
		Query q=session.createQuery("from Message where sender=? and getter=?");
		q.setParameter(0, sender);
		q.setParameter(1, getter);
		List l = q.list();
//		HttpServletRequest request = ServletActionContext.getRequest(); 
//		HttpSession ses = request.getSession();
//		ses.setAttribute("em", em);
		t.commit();
		session.close();
		return l;
		
	}
}
