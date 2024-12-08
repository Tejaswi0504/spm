package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;

public interface AdminService 
{
   public List<Employee> viewAllEmployess();
   public Admin checkadminlogin(String uname,String pwd);
   public Employee displayemployeebyID(int eid);
   public Long empcount();
   public String deleteemp(int eid);
   public String updateemployeestatus(String status,int eid); 
   public String addcustomer(Customer c);
   
   
   
   //created a view all customer 
   public List<Customer> viewAllCustomer();
   public Long cuscount();
   
   public String addEmployee(Employee employee);
   
}
