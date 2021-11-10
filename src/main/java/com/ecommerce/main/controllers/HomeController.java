package com.ecommerce.main.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ecommerce.main.model.Cart;
import com.ecommerce.main.model.Products;
import com.ecommerce.main.model.User;
import com.ecommerce.main.repo.CartRepo;
import com.ecommerce.main.repo.ProductsRepo;
import com.ecommerce.main.repo.UserRepo;

@Controller
public class HomeController {

	@Autowired
	ProductsRepo productsrepo;
	@Autowired
	UserRepo userrepo;
	@Autowired
	CartRepo cartrepo;
	int i=1;
	ModelAndView mv = new ModelAndView();

	@RequestMapping("profile")
	public ModelAndView profile(HttpSession session) {
		mv.addObject(session.getAttribute("user"));
		mv.setViewName("profilesaved");
		return mv;
	}

	@RequestMapping("home")
	public ModelAndView home(HttpSession session) {
		mv.addObject(session.getAttribute("user"));
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
		List<Products> productslist = (List<Products>) productsrepo.findAll();
		mv.addObject("product",productslist);
		mv.setViewName("product");
		return mv;
	}
	
	@RequestMapping("addToCart")
	public String addToCart(Cart cart) {
		Products product = productsrepo.findById(cart.getProdId()).orElse(null);
		cart.setProdName(product.getProdName());
		cart.setProdImgSrc(product.getProdImgSrc());
		cart.setProdNos(1);
		cart.setCartTotalPrice(product.getProdPrice());
		cart.setProdTotalPrice(product.getProdPrice());
		cartrepo.save(cart);
		return "redirect:/products";
	}
	
	@RequestMapping("cart")
	public ModelAndView cart() {
		List<Cart> cartlist = (List<Cart>) cartrepo.findAll();
		mv.addObject("cart", cartlist);
		mv.setViewName("cart");
		return mv;
	}
}
