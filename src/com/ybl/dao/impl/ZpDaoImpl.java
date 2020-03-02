package com.ybl.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.dao.ZpDao;
import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Zp;

public class ZpDaoImpl implements ZpDao {
	public List selectallZp(){
		Session session=null;
		Transaction tx =null;
		List list=null;
		try{
			//获得会话
			session=HibernateSessionFactory.getSession();
			//创建事务
			tx=session.beginTransaction();
			//查询信息
			Query query=session.createQuery("from Zp");
//			query.setParameter(arg0, arg1)
			list=query.list();
			tx.commit();
		}catch(Exception e){
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		return list;
	}

	@Override
	public void deletezp(Zp zp) {
		Session session=null;
		Transaction tx=null;
		System.out.println(zp.getPostid());
		try{
			session=HibernateSessionFactory.getSession();			//获得会话
			tx=session.beginTransaction();							//创建事务
			Query query=session.createQuery("delete Zp where zpid=?");
			query.setParameter(0,zp.getZpid());
			query.executeUpdate();
			tx.commit();
		}catch(Exception e){
			if(tx!=null)
				tx.rollback();
				e.printStackTrace();
		}finally{
			session.close();
		}
		
	}
	}

