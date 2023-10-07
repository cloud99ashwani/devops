package com.training.devops.helloworlddevops.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.training.devops.helloworlddevops.model.ProductDetails;

@RestController
@RequestMapping("/api/productDetails")
public class ProductDetailsController {

	List<ProductDetails> list =  List.of(new ProductDetails(1l,1000l,1000l),
			new ProductDetails(2l,2000l,2000l),
			new ProductDetails(3l,3000l,3000l),
			new ProductDetails(4l,4000l,4000l),
			new ProductDetails(5l,5000l,5000l)
			);
	@GetMapping("/list")
	public List<ProductDetails> getList(){
		return list; 
	}
	
	@GetMapping("/{id}")
	public ProductDetails find(@PathVariable int id){
		return list.get(id-1); 
	}
}