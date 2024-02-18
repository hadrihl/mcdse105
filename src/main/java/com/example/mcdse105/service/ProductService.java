package com.example.mcdse105.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.mcdse105.entity.Product;
import com.example.mcdse105.repository.ProductRepository;

@Service
@Transactional
public class ProductService {
	
	@Autowired
	private ProductRepository productRepository;
	
	public List<Product> getAllProducts() {
		return productRepository.findAll();
	}
 	
	public Product addNewProduct(Product product) {
		Product savedProduct = new Product();
		
		savedProduct.setName(product.getName());
		savedProduct.setDescription(product.getDescription());
		savedProduct.setCategory(product.getCategory());
		savedProduct.setPrice(product.getPrice());
		savedProduct.setQuantity(product.getQuantity());
		
		return productRepository.save(savedProduct);
	}
	
	public Product getProductById(Long id) {
		return productRepository.findById(id).get();
	}
	
	public Product updateProductDetails(Long id, Product product) {
		Product savedProduct = productRepository.findById(id).get();
		
		savedProduct.setName(product.getName());
		savedProduct.setDescription(product.getDescription());
		savedProduct.setCategory(product.getCategory());
		savedProduct.setPrice(product.getPrice());
		savedProduct.setQuantity(product.getQuantity());
		
		return productRepository.save(savedProduct);
	}
	
	public void removeProductById(Long id) {
		productRepository.deleteById(id);
	}
}
