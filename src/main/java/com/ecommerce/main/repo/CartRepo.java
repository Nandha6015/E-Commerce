package com.ecommerce.main.repo;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.main.model.Cart;

public interface CartRepo extends CrudRepository<Cart, Integer>{
}
