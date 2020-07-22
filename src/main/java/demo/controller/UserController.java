package demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import demo.model.User;
import demo.service.UserService;

@Controller
public class UserController 
{
	@Autowired
	private UserService userService;
	
	@RequestMapping("/userRegister")
	public ModelAndView UserRegister(@RequestParam("name")String name, @RequestParam("password")String password, @RequestParam("email")String email, @RequestParam("mnumber")int mnumber)
	{
		User user= new User(name,password,email,mnumber);
		userService.AddUser(user);
		return new ModelAndView("redirect:/index.jsp");
	}
	
	@RequestMapping("/validateUser")
	public ModelAndView UserValidation(@RequestParam("name") String name, @RequestParam("password")String password)
	{
		boolean validate= userService.userValidation(name,password);
		
		if(validate)
			return new ModelAndView("valid");
		else

			return new ModelAndView("invalid");
	}
}
