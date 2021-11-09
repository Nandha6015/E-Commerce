package com.ecommerce.main.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.main.model.Products;
import com.ecommerce.main.model.User;
import com.ecommerce.main.repo.ProductsRepo;
import com.ecommerce.main.repo.UserRepo;

@Controller
public class HomeController {

	@Autowired
	ProductsRepo productsrepo;
	@Autowired
	UserRepo userrepo;

	ModelAndView mv = new ModelAndView();
	User user;

	public User readCookkies(@CookieValue(value = "userId", defaultValue = "") String userId) {
		if (user == null)
			user = userrepo.findById(Integer.valueOf(userId)).orElse(new User());
		return user;
	}

	@RequestMapping("profile")
	public ModelAndView profile() {
		User u = this.readCookkies("");
		System.out.println(u);
		mv.addObject(user);
		mv.setViewName("profilesaved");
		return mv;
	}

	@RequestMapping("home")
	public ModelAndView home() {
		mv.addObject(this.user);
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping("updateProfile")
	public ModelAndView updateProfile(User user) {
		userrepo.save(user);
		mv.addObject(user);
		mv.setViewName("profilesaved");
		return mv;
	}

	@RequestMapping("products")
	public ModelAndView product() {
		List<Products> products = (List<Products>) productsrepo.findAll();
		mv.addObject("product", products);
		mv.setViewName("product");
		return mv;
		
	}
}
