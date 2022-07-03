import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceryapp/views/cart.dart';
import 'package:groceryapp/views/homepage.dart';
import 'package:groceryapp/views/login.dart';
import 'package:groceryapp/views/product_list.dart';

import '../models/narbar_model.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: "Home",
            isActive: true,
            svgScr: "assets/icons/botnav.svg",
            press: () {
              Get.to(HomePage());
            },
          ),
          BottomNavItem(
            title: "Product",
            svgScr: "assets/icons/apple.svg",
            press: () {
              Get.to(ProductFulList());
            },
          ),
          BottomNavItem(
            title: "Cart",
            svgScr: "assets/icons/botnav3.svg",
            press: () {
              Get.to(CartPage());
            },
          ),
          BottomNavItem(
            title: "Account",
            svgScr: "assets/icons/apple.svg",
            press: () {
              Get.to(const LoginScreen());
            },
          ),
        ],
      ),
    );
  }
}
