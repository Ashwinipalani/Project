package com.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CartItemDao;
import com.project.model.Cart;
import com.project.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService{
	@Autowired
	private CartItemDao cartItemDao;
	public void addCartItem(CartItem cartItem) {
		 cartItemDao.addCartItem(cartItem);
				
			}
	public CartItem getCartItem(int cartItemId) {
		
		return cartItemDao.getCartItem(cartItemId);
	}
	public void removeCartItem(CartItem cartItem) {
		cartItemDao.removeCartItem(cartItem);
	}
	public void removeAllCartItems(Cart cart) {
		cartItemDao.removeAllCartItems(cart);
	}

}
