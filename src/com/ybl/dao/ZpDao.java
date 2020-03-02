package com.ybl.dao;

import java.util.List;

import com.ybl.vo.Zp;

public interface ZpDao {
	public List selectallZp();//查询所有用户
	public void deletezp(Zp zp);
}
