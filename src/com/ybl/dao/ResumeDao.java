package com.ybl.dao;

import java.util.List;

import com.ybl.vo.Employee;
import com.ybl.vo.Resume;

public interface ResumeDao {
	public List selectallresume();//查询所有简历
	public void deleteresume(Resume resume );//删除简历
}
