package com.ybl.Action;

import java.util.List;
import java.util.Map;

import org.apache.commons.validator.Msg;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ybl.dao.EmployeeDao;
import com.ybl.dao.impl.EmployeeDaoImpl;
import com.ybl.vo.Employee;

public class employeeAction extends ActionSupport{
		private Employee employee ;
		private String message;
		EmployeeDao employeeDao=new EmployeeDaoImpl();
		public String selectalluser()throws Exception{					//调用EmployeeDao的方法查询所有Employee
			List list=employeeDao.selectalluser();
			Map request=(Map)ActionContext.getContext().get("request");
		    request.put("list", list);
			Employee em =  (Employee)list.get(0);
			System.out.println(list.size()+"  "+em.getEmail());		
			return SUCCESS;
		}
		public Employee getEmployee() {
			return employee;
		}
		public void setEmployee(Employee employee) {
			this.employee = employee;
		}
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
}
