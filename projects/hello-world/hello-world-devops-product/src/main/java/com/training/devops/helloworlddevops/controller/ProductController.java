package com.training.devops.helloworlddevops.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.training.devops.helloworlddevops.model.Product;

import lombok.extern.log4j.Log4j2;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequestMapping("/api/product")
@Slf4j
public class ProductController {

	List<Product> list =  List.of(new Product(1l,"Laptop1","Description1"),
			new Product(2l,"Laptop2","Description2"),
			new Product(3l,"Laptop3","Description3"),
			new Product(4l,"Laptop4","Description4"),
			new Product(5l,"Laptop5","Description5")
			);
	@GetMapping("/list")
	public List<Product> getList(){
		log.info("display the list of product {}",list);
		return list; 
	}
	
	@GetMapping("/{id}")
	public Product find(@PathVariable int id){
		log.info("find product id : {}",id);
		return list.get(id-1); 
	}
}