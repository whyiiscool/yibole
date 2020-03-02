package com.ybl.dao;

import java.util.List;

import com.ybl.vo.Employee;

public interface EmployeeDao {
	public List selectalluser();//查询所有用户
	public void addUser(Employee user);//添加用户
	public List selectuser(String xx);//条件查询
	public void updateuser(Employee user);//修改用户
	public void deleteuser(Employee user);//删除用户
	public Employee selectuserforId(String userId); 
  }     
