
package com.project.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import com.project.model.Product;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import com.project.service.*;
import com.project.dao.*;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import java.nio.file.Path;
import java.util.List;


import javax.validation.Valid;


@Controller
public class ProductController {
	
@Autowired
private ProductService productService;

@Autowired
private CategoryService categoryService;
Logger logger=Logger.getLogger(ProductController.class);

	public ProductController(){
		
		System.out.println("Creating Product Controller Instances");
	
	}
		
 @RequestMapping("/admin/product/ProductForm")
public String getProductForm(Model model){
	model.addAttribute("product",new Product());
	model.addAttribute("categories", categoryService.getCategories());
	return "ProductForm";
	}

@RequestMapping("/admin/product/addProduct")
public String saveProduct(@Valid @ModelAttribute(value="product")Product product,BindingResult result,Model model){
	model.addAttribute("categories",categoryService.getCategories());
	
logger.debug("==========================================================================================================");	

	if(result.hasErrors())
		return "ProductForm";
	productService.saveProduct(product);
logger.debug("After persisting the product details");	

	MultipartFile prodImage=product.getImage();
	if(!prodImage.isEmpty()){
		Path paths=Paths.get("C:/Users/ASHWINI/workspace/Demo/src/main/webapp/WEB-INF/resources/images/" +product.getId()+".png");
		try{
			prodImage.transferTo(new File(paths.toString()));
		}
		catch(IllegalStateException e){
			e.printStackTrace();			
		}
		catch(IOException e){
			e.printStackTrace();
			
		}
	}
	
logger.debug("============================================================================================================================");	
	return "redirect:/all/product/getAllProducts";
} 

@RequestMapping("/all/product/getAllProducts")
public String getAllProducts(Model model){
	List <Product> products=productService.getAllProducts();
	model.addAttribute("productList", products);
	return "productlist";
}

@RequestMapping("/all/product/viewproduct/{id}")
public String viewProduct(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
		return "viewproduct";
}

@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProduct(@PathVariable int id){
	
	productService.deleteProduct(id);
	return"redirect:/all/product/getAllProducts";
}


@RequestMapping("/admin/product/editform/{id}")
public String editProductForm(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	model.addAttribute("categories",categoryService.getCategories());
	return "editproductform";
}

@RequestMapping("/admin/product/editProduct")
public String editProductDetails(@Valid @ModelAttribute("product") Product product,
		BindingResult result){
	if(result.hasErrors())
		return "ProductForm";
	productService.updateProduct(product);
	return "redirect:/all/product/getAllProducts";
}

@RequestMapping("/all/product/productByCategory")
public String getProductByCategory(@RequestParam(name="searchCondition") String searchCondition,Model model){
	List<Product> products=productService.getAllProducts();
	model.addAttribute("productList", products);
	model.addAttribute("searchCondition", searchCondition);
	return "productlist";
}
}
 