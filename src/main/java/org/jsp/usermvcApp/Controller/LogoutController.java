package org.jsp.usermvcApp.Controller;

import javax.servlet.http.HttpSession;

import org.jsp.usermvcApp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LogoutController {

	@Autowired
	UserService service;
	
	@RequestMapping
	public String logout(HttpSession session , Model model) {
		session.invalidate();
		model.addAttribute("message","Logout");
		return "Login";
	}
}
