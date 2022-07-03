import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final int price;

  Product({
    required this.image,
    required this.title,
    required this.price,
  });
}

List<Product> product_list = [
  Product(
    image: "assets/pepper.png",
    title: "Bell Pepper Red",
    price: 13,
  ),
  Product(
    image: "assets/redmeat.png",
    title: "Lamb Meat",
    price: 17,
  ),
  Product(
    image: "assets/ginger.png",
    title: "Arabic Ginger",
    price: 12,
  ),
  Product(
    image: "assets/ginger.png",
    title: "Arabic Ginger",
    price: 12,
  ),
];

List<Product> product_list_large = [
  Product(
    image: "assets/pepper.png",
    title: "Bell Pepper Red",
    price: 13,
  ),
  Product(
    image: "assets/redmeat.png",
    title: "Lamb Meat",
    price: 17,
  ),
  Product(
    image: "assets/ginger.png",
    title: "Arabic Ginger",
    price: 12,
  ),
  Product(
    image: "assets/images/product4.png",
    title: "Fresh Lettuce",
    price: 14,
  ),
  Product(
    image: "assets/images/product5.png",
    title: "Fresh Lettuce",
    price: 14,
  ),
  Product(
    image: "assets/images/product6.png",
    title: "Fresh Lettuce",
    price: 14,
  ),
  Product(
    image: "assets/images/product7.png",
    title: "Fresh Lettuce",
    price: 14,
  ),
];
