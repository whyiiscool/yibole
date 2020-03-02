package com.ybl.dao;

import java.util.List;

import com.ybl.vo.Employer;


public interface EmployerDao {
	public List selectalluser();//查询所有用户
	public void addUser(Employer user);//添加用户
	public List selectuser(String xx);//条件查询
	public void updateuser(Employer user);//修改用户
	public void deleteuser(Employer user);//删除用户
  }     