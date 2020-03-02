package com.ybl.dao;

import com.ybl.vo.Admin;



public interface LoginDao {
	public Admin checkLogin(String m_id ,String m_pwd);
}
