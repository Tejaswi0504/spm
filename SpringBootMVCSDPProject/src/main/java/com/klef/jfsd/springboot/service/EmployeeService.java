package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Employee;

public interface EmployeeService 
{
   public String EmployeeRegistration(Employee emp);
   public Employee checkemployeelogin(String email,String pwd);
   public String updateEmployeeProfile(Employee employee);
   public Employee displayEmployeebyID(int eid);
   
   public List<Employee> displayEmployeesByDept(String department);
   public void addEmployee(Employee employee);
   
}
