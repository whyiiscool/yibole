package com.ybl.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.dao.LoginDao;
import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Admin;


public class LoginDaoImpl implements LoginDao{
	public Admin checkLogin(String m_id ,String m_pwd){
		Session session=null;
		Transaction tx=null;
		Admin mid=null;
		try{
			session=HibernateSessionFactory.getSession();//获得会话
			tx=session.beginTransaction();//创建事务
			Query query=session.createQuery("from Admin where id=?and passwd=?");
			query.setParameter(0,m_id);
			query.setParameter(1, m_pwd);
			mid=(Admin) query.uniqueResult();//执行查询
			tx.commit();//提交事务
		}catch(Exception e){
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}
		return mid;
	}

}
