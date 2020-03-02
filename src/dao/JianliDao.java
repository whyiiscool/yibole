package dao;

import java.awt.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ybl.util.HibernateSessionFactory;
import com.ybl.vo.Resume;


public class JianliDao {
	
public void insertjianli(Resume re){//修改简历
	Session session=null;
	Transaction t=null;
	try{
		session=HibernateSessionFactory.getSession();
	    t=session.beginTransaction();
//	    Resume resume=(Resume)session.get(Resume.class, re.getId());
	    session.update(re);  
	    t.commit();
	}
	catch (Exception e){
		if(t!=null)t.rollback();
		e.printStackTrace();
	}
	finally{
		session.close();
	}
}	
	
	
	
public void  alterjianli(Resume re){//添加简历
	
	Session session=null;
	Transaction t=null;
	try{
		session=HibernateSessionFactory.getSession();
		t=session.beginTransaction();	   
//		Query query  =session.createQuery("update Employee em set em.userId=?,em.userName=?,em.userPwd=?,em.sex=?,em.userNum=?,em.email=? where em.id=?"); 
//		query.setString(0,em.getUserId());
//		query.setString(1,em.getUserName());
//		query.setString(2,em.getUserPwd());
//		query.setString(3,em.getSex());
//		query.setString(4,em.getUserNum());
//		query.setString(5,em.getEmail());
//		query.setInteger(6,2);
//		h=query.executeUpdate();
//	    t.commit();
//	    System.out.print(h);
	    session.save(re);  //当em中有主键时
	    t.commit();
	}
	catch (Exception e){
		if(t!=null)t.rollback();
		e.printStackTrace();
	}
	finally{
		session.close();
	}
	
//    if(h>0){
//    	return true;
//    }else 
//    	return false;
	
}
public boolean repassword(String yusername,String repassword){
	Session session=null;
	Transaction t=null;
	int h=0;
	try{
		session=HibernateSessionFactory.getSession();
	    t=session.beginTransaction();
	    
		String hql="update Employee e set e.userpwd=? where e.username=?";
		Query query  =session.createQuery(hql); 
		query.setString(0,repassword);
		query.setString(1,yusername);
		h=query.executeUpdate();
	    t.commit();
	    System.out.print(h);
	}
	catch (Exception e){
		if(t!=null)t.rollback();
		e.printStackTrace();
	}
	finally{
		session.close();
	}
	
    if(h>0){
    	return true;
    }else 
    	return false;
}


public boolean deletejianli(String username){
	Session session=null;
	Transaction t=null;
	int h=0;
	try{
		session=HibernateSessionFactory.getSession();
	    t=session.beginTransaction();
	    
	    
	    String sql = "delete from ResumB r where r.userName=?";
	    Query query = session.createSQLQuery(sql);	
	    query.setString(0,username);
	    h=query.executeUpdate();
	    t.commit();
	    System.out.print(h);
	}
	catch (Exception e){
		if(t!=null)t.rollback();
		e.printStackTrace();
	}
	finally{
		session.close();
	}
	
    if(h>0){
    	return true;
    }else 
    	return false;	
}

public boolean deletejianlibyre(Resume re){
	Session session=null;
	Transaction t=null;
	int h=0;
	try{
		session=HibernateSessionFactory.getSession();
	    t=session.beginTransaction();
	    
	    
//	    String sql = "delete from ResumB r where r.userName=?";
//	    Query query = session.createSQLQuery(sql);	
//	    query.setString(0,username);
//	    h=query.executeUpdate();
	    session.delete(re);
	    t.commit();
	    System.out.print(h);
	}
	catch (Exception e){
		if(t!=null)t.rollback();
		e.printStackTrace();
	}
	finally{
		session.close();
	}
	
    if(h>0){
    	return true;
    }else 
    	return false;	
}



public Resume queryjianli(int id){
	
	Session session=null;
	Transaction t=null;
	Resume resume=null;
	try{
		session=HibernateSessionFactory.getSession();
	    t=session.beginTransaction();
	    
	    
	    String sql = "from Resume r where r.id=?";
	    Query query = session.createSQLQuery(sql);	
	    query.setInteger(0,id);
	    resume=(Resume)query.uniqueResult();
//	    h=query.executeUpdate();
	    t.commit();
	}
	catch (Exception e){
		if(t!=null)t.rollback();
		e.printStackTrace();
	}
	finally{
		session.close();
	}
	return resume;
}


public List cxjianli(String username){
	
	Session session=null;
	Transaction t=null;
	List list = null;
	try{
		session=HibernateSessionFactory.getSession();
	    t=session.beginTransaction();
	    
	    
	    String sql = "from Resume r where r.username=?";
	    Query query = session.createSQLQuery(sql);	
	    query.setString(0,username);
	    list=(List) query.list();
//	    h=query.executeUpdate();
	    t.commit();
	}
	catch (Exception e){
		if(t!=null)t.rollback();
		e.printStackTrace();
	}
	finally{
		session.close();
	}
	return list;
}

public List selectjianli(){
	
	Session session=null;
	Transaction t=null;
	List list = null;
	try{
		session=HibernateSessionFactory.getSession();
	    t=session.beginTransaction();
	    
	    
	    String sql = "from Resume";
	    Query query = session.createSQLQuery(sql);	
//	    query.setString(0,username);
	    list=(List) query.list();
//	    System.out.println(list.size());
//	    h=query.executeUpdate();
	    t.commit();
	}
	catch (Exception e){
		if(t!=null)t.rollback();
		e.printStackTrace();
	}
	finally{
		session.close();
	}
	return list;
}

}
