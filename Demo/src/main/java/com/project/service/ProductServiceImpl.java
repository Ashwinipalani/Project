package com.project.service;

import com.project.model.Product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ProductDao;

@Service
public class ProductServiceImpl implements ProductService {

@Autowired
private ProductDao productDao;
	
	public ProductServiceImpl(){
		System.out.println("Creating instance for Product service ");
	}
	
	
	public Product saveProduct(Product product){
		return productDao.saveProduct(product);
	}


	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}


	public List<Product> getAllProducts() {
	    return productDao.getAllProducts();
	}


	public void deleteProduct(int id) {
		productDao.deleteProduct(id);
	}


	public void updateProduct(Product product) {
		productDao.updateProduct(product);
		
	}
	

}
