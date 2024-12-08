package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Employee;
import com.klef.jfsd.springboot.service.AdminService;


import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController 
{
	@Autowired
   private AdminService adminService;
	

	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminhome");
		
		 Long count = adminService.empcount();
		 mv.addObject("empcount",count);
		
		return mv;
	}
	
	@GetMapping("viewallemps")
    public ModelAndView viewallemps()
    {
      ModelAndView mv = new ModelAndView();
      List<Employee> emplist = adminService.viewAllEmployess();
      mv.setViewName("viewallemps");
      mv.addObject("emplist",emplist);
      
      long count = adminService.empcount();
      mv.addObject("empcount", count);
      
      return mv;
    }
	
	
	//created a view all customer 
	@GetMapping("viewallcustomer")
	public ModelAndView viewallcustomer()
	{
		ModelAndView mv = new ModelAndView();
		List<Customer> cuslist = adminService.viewAllCustomer();
		mv.setViewName("viewallcustomer");
		mv.addObject("cuslist", cuslist);
		
		Long count = adminService.cuscount();
		mv.addObject("cuscount", count);
		
		return mv;
	}
	
	@GetMapping("deleteemp")
    public ModelAndView deleteemp()
    {
      ModelAndView mv = new ModelAndView();
      List<Employee> emplist = adminService.viewAllEmployess();
      mv.setViewName("deleteemp");
      mv.addObject("emplist",emplist);
      return mv;
    }
	
	@GetMapping("updateempstatus")
    public ModelAndView updateempstatus()
    {
      ModelAndView mv = new ModelAndView();
      List<Employee> emplist = adminService.viewAllEmployess();
      mv.setViewName("updateempstatus");
      mv.addObject("emplist",emplist);
      return mv;
    }
	
	@GetMapping("updatestatus")
	public String updatestatus(@RequestParam("id") int eid,@RequestParam("status") String status)
	{
		adminService.updateemployeestatus(status, eid);
		return "redirect:/updateempstatus"; // include only /
	}
	
	@GetMapping("delete")
	public String deleteoperation(@RequestParam("id") int eid)
	{
		adminService.deleteemp(eid);
		
		return "redirect:/deleteemp"; //redirect to specific page
	}
	
	@GetMapping("adminlogout")
	public ModelAndView adminlogout()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}

	
	
//	@PostMapping("checkadminlogin")
//	// @ResponseBody
//	public ModelAndView checkadminlogin(HttpServletRequest request)
//	{
//		
//		ModelAndView mv = new ModelAndView();
//		
//		String auname = request.getParameter("auname");
//		String apwd = request.getParameter("apwd");
//		
//		Admin admin = adminService.checkadminlogin(auname, apwd);
//		
//		if (admin!=null)
//		{
//			//return "admin login Success";
//			mv.setViewName("adminhome");
//			 Long count = adminService.empcount();
//			 mv.addObject("empcount",count);
//			
//		}
//		else
//		{
//			//return "admin login Failed";
//			mv.setViewName("adminlogin");
//			mv.addObject("message", "Login Failed");
//		}
//		return mv;
//		
//	}
	
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    
	    String auname = request.getParameter("auname");
	    String apwd = request.getParameter("apwd");

	    Admin admin = adminService.checkadminlogin(auname, apwd);

	    if (admin != null) {
	        mv.setViewName("adminhome");
	        Long count = adminService.empcount();
	        mv.addObject("empcount", count);
	        mv.addObject("success", true);  // Pass success status
	        mv.addObject("message", "Admin login successful");
	        
	        // Debugging
	        System.out.println("Login Success: Admin home loaded");
	    } else {
	        mv.setViewName("adminlogin");
	        mv.addObject("success", false);  // Pass failure status
	        mv.addObject("message", "Credentials are wrong");
	        
	        // Debugging
	        System.out.println("Login Failed: Credentials are wrong");
	    }
	    return mv;
	}
	@GetMapping("addemployee")
	  public String addcustomer(Model m)
	  {
	    m.addAttribute("employee", new Employee());
	    return "addemployee";
	  }
	  
	@PostMapping("insertemployee")
	public ModelAndView insertEmployee(@ModelAttribute("employee") Employee employee) {
	    ModelAndView mv = new ModelAndView();
	    String msg = adminService.addEmployee(employee); // Save employee via service
	    mv.setViewName("employeesuccess");
	    mv.addObject("message", msg);
	    return mv;
	}

}
