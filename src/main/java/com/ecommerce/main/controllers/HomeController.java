package com.ecommerce.main.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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

	@RequestMapping("profile")
	public ModelAndView profile(HttpSession session) {
		User user = (User) session.getAttribute("user");
		mv.addObject(user);
		mv.setViewName("profilesaved");
		return mv;
	}

	@RequestMapping("home")
	public ModelAndView home(HttpSession session) {
		User user = (User) session.getAttribute("user");
		mv.addObject(user);
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
		mv.setViewName("products");
		return mv;
	}
}
