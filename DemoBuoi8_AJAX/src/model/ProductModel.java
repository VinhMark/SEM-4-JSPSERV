package model;

import java.util.ArrayList;
import java.util.List;

import entities.Product;

public class ProductModel {
	private List<Product>products ;
	public Product find() {
		return new Product("po1" ,"po1" ,55);
	}
	public ProductModel(){
		products = new ArrayList<Product>();
		products.add(new Product("po1" ,"po1" ,55 ,"c1"));
		products.add(new Product("po2" ,"po2" ,5 ,"c2"));
		products.add(new Product("po3" ,"po3" ,55,"c3"));
		products.add(new Product("po4" ,"po4" ,545,"c1"));
		products.add(new Product("po5" ,"po5" ,515,"c2"));
		products.add(new Product("po6" ,"po6" ,557,"c2"));
		products.add(new Product("po7" ,"po7" ,559,"c3"));
		products.add(new Product("po8" ,"po8" ,557,"c1"));
	}
	public List<Product> findAll() {
		return this.products;
	}
	
	public List<String> Search(String name) {
		List<String> result = new ArrayList<String>();
		for(Product product : this.products){
			if (product.getName().toLowerCase().contains(name.trim().toLowerCase())) {
				result.add(product.getName());
			}
		}
		return result;
	}
	
	public List<Product> SearchCategory(String categoryid) {
		List<Product> result = new ArrayList<Product>();
		for(Product product : this.products){
			if (product.getCategoryId().equalsIgnoreCase(categoryid)) {
				result.add(product);
			}
		}
		return result;
	}
}
