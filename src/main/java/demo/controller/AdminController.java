package demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import demo.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService adminService;
	
	@RequestMapping("/")
	public ModelAndView defaultView() {
		return new ModelAndView("welcome");
	}
	
	@RequestMapping("/validateAdmin")
	public ModelAndView Validate(@RequestParam("name")String name, @RequestParam("password")String password)
	{
		//System.out.println("username....."+name+password);
		boolean validate=adminService.validateAdmin(name,password);
		if(validate)
		{
			return new ModelAndView("dashboard");
			
		}
		else
		{
			return new ModelAndView("invaliduser");
		}
	}
	
	@RequestMapping("/logout")
	public ModelAndView Logout()
	{
		return new ModelAndView("redirect:/welcome.jsp");
	}
}
