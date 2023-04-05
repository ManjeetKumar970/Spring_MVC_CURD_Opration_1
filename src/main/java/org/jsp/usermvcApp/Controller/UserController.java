package org.jsp.usermvcApp.Controller;


import java.util.List;

import org.jsp.usermvcApp.dto.User;
import org.jsp.usermvcApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;
@SessionAttributes(names={"user"})
@Controller
public class UserController {
    @Autowired
	private UserService service;
 
    @RequestMapping("/load")
    public ModelAndView load(ModelAndView view) {
   	view.setViewName("Register");
   	view.addObject("user",new User());	
   	return view; 
    }  
	
  
   @RequestMapping("/Login")
    public ModelAndView Login(ModelAndView view ,@RequestParam String nm,@RequestParam String pd ) {
	User user=service.userVerification(nm, pd);
	List<User> us = service.ShowAllUser();
	if(user!=null) {
	view.setViewName("Home");
	view.addObject("user",new User());
	view.addObject("us",us);
	}else {
	 view.setViewName("Login");
     view.addObject("message","User Not Found");
	}	
   	return view; 
    }  
	
	@RequestMapping(value="/reg" ,method = RequestMethod.POST)
	public ModelAndView Register(ModelAndView view,@ModelAttribute User user ) {
		user =service.saveUser(user);
		view.setViewName("Register");
		view.addObject("message", "Your Data Will Be Save");
	 return view;
		
		}


	@RequestMapping("/edit")
	public ModelAndView edit(ModelAndView view,@ModelAttribute User user , @RequestParam int id ) {
		 user=service.findUserById(id);
		 view.setViewName("Update");
		 view.addObject("user", user);
	 return view;
		
		}
	@RequestMapping(value = "/update" ,method = RequestMethod.POST)
	public ModelAndView Update(ModelAndView view,@ModelAttribute User user ) {
		 user =service.updateUser(user);
		 view.setViewName("Home");
		 view.addObject("message", "Data Updated");
		
	 return view;
		
		}
  
	@RequestMapping("/Delete")
	public ModelAndView Delete(ModelAndView view,@ModelAttribute User user , @RequestParam int id) {
		 service.DeleteUser(id);
		view.setViewName("Home");
		view.addObject("message", "Your Data Will Be Delete");
	 return view;
		
		}
 
	@RequestMapping("/Fetch")
	public ModelAndView Fetch(ModelAndView view) {
		List<User>user= service.ShowAllUser();
		view.setViewName("Home");
		view.addObject("us",user); 
		
		return view;
	}

}
