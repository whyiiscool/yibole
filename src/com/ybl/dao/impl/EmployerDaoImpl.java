package com.ybl.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.dao.EmployerDao;
import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Employer;

public class EmployerDaoImpl implements EmployerDao {
	//查询所有招聘者信息
	public List selectalluser(){
		Session session=null;
		Transaction tx =null;
		List list=null;
		try{
			//获得会话
			session=HibernateSessionFactory.getSession();
			//创建事务
			tx=session.beginTransaction();
			//查询信息
			Query query=session.createQuery("from Employer");
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

		public void addUser(Employer user) {  										//	添加用户
		// TODO Auto-generated method stub
		Session session=null;
		Transaction tx=null;
		try{
			session=HibernateSessionFactory.getSession();//获得会话
			tx=session.beginTransaction();//创建事务
			session.save(user);//持久化保存对象
			tx.commit();//提交事务		
		}catch(Exception e){
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}

	public List selectuser(String xx) {   									 // 查询用户
		// TODO Auto-generated method stub
		Session session=null;
		Transaction tx=null;
		List list=null;
		try{
			session=HibernateSessionFactory.getSession();//或得会话
			tx=session.beginTransaction();//创建事务
			Query query=session.createQuery("from Employer where filmid=?");
			query.setParameter(0, xx);  
			/*query.setParameter(1, xx);
			query.setParameter(2, xx);*/
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

	public void updateuser(Employer user){					//修改用户
		Session session=null;
		Transaction tx=null;
		try{
			session=HibernateSessionFactory.getSession();//获得会话
			tx=session.beginTransaction();//创建事务	
			session.update(user);//
			tx.commit();//提交事务		
		}catch(Exception e){
			if(tx!=null)tx.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		
	}	
	public void deleteuser(Employer user) { 			//删除用户
		// TODO Auto-generated method stub
		Session session=null;
		Transaction tx=null;
		System.out.println(user.getFilmid());
		try{
			session=HibernateSessionFactory.getSession();			//获得会话
			tx=session.beginTransaction();							//创建事务
			Query query=session.createQuery("delete Employer where filmid=?");
			query.setParameter(0,user.getFilmid());
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
