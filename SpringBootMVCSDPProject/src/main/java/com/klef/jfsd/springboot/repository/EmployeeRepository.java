package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Employee;

import jakarta.transaction.Transactional;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Integer>
{
  @Query("select e from Employee e where e.email=?1 and e.password=?2")
  public Employee checkemployeelogin(String uemail,String upwd);
  
  @Query("update Employee e set e.status=?1 where id=?2")
  @Modifying   // DML Operation 
  @Transactional //To enable auto commit
  public int updateEmployeeStatus(String status,int eid);
  
  // reference 
  // No need to write queries explicitly
  public List <Employee> findByDepartment(String department); //no need of query
  public List<Employee> findByGenderAndDepartment(String gender, String department);
  public List<Employee> findByGender(String gender);
  
}
