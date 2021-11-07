package com.ecommerce.main.repo;

import org.springframework.data.repository.CrudRepository;

import com.ecommerce.main.model.Products;

public interface ProductsRepo extends CrudRepository<Products, Integer> {

}
