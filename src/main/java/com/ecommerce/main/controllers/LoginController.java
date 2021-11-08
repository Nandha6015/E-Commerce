package com.ecommerce.main.controllers;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.ecommerce.main.model.User;
import com.ecommerce.main.repo.UserRepo;

@Controller
public class LoginController {

	@Autowired
	UserRepo userrepo;
	ModelAndView mv = new ModelAndView();

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("addUser")
	public ModelAndView addUser(HttpServletResponse response, User user) {
		mv.setViewName("home");
		userrepo.save(user);
		response.addCookie(new Cookie("userId", String.valueOf(user.getUserId())));
		mv.addObject(user);
		return mv;
	}

	@RequestMapping("loginUser")
	public ModelAndView loginUser(HttpServletResponse response, User verifyuser) {
		User user = userrepo.findByUserEmail(verifyuser.getUserEmail());

		if (user.getUserPassword().equals(verifyuser.getUserPassword())) {
			mv.setViewName("home");
			mv.addObject(user);
		} else {
			mv.setViewName("login");
		}
		response.addCookie(new Cookie("userId", String.valueOf(user.getUserId())));
		return mv;
	}

}
