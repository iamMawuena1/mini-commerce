import 'package:flutter/material.dart';
import 'package:mini_commerce/models/product.dart';

class Shop extends ChangeNotifier {
  //product for sale
  final List<Product> _shop = [
    Product(
      name: "Kasasi Design",
      price: 100.0,
      description: "Item description",
      imagePath: "images/bag1.jpg",
    ),
    Product(
      name: "Menua Collection",
      price: 90.0,
      description: "Item description",
      imagePath: 'images/bag2.jpg',
    ),
    Product(
      name: "Classic 1",
      price: 80.0,
      description: "Item description",
      imagePath: "images/watch1.jpg",
    ),
    Product(
      name: "Classic 2",
      price: 70.0,
      description: "Item description",
      imagePath: "images/watch2.jpg",
    ),
    Product(
      name: "Gye w3 ni",
      price: 50.0,
      description: "Item description",
      imagePath: "images/spec4.jpg",
    ),
  ];

  //user cart
  // ignore: prefer_final_fields
  List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  //add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
