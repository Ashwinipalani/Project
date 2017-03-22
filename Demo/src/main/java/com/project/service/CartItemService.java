package com.project.service;

import com.project.model.Cart;
import com.project.model.CartItem;

public interface CartItemService {
	void addCartItem(CartItem cartItem);
	CartItem getCartItem(int cartItemId);
	void removeCartItem(CartItem cartItem);
	void removeAllCartItems(Cart cart);
	}