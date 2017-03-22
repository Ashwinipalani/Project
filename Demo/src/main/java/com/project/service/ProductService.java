package com.project.service;
import java.util.List;

import com.project.model.Product;

public interface ProductService {
	
	public Product saveProduct(Product product);
	public List<Product> getAllProducts();
	public Product getProductById(int id);
	void deleteProduct(int id);
	void updateProduct(Product product);

}
