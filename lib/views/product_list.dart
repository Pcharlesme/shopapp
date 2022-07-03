import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceryapp/models/product.dart';
import 'package:groceryapp/views/narbar.dart';
import 'package:groceryapp/views/productdetails.dart';

class ProductFulList extends StatelessWidget {
  const ProductFulList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/pepper.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: Image(image: AssetImage("assets/maskgal.png")),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .65,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 22,
                      children: <Widget>[
                        ProductView(
                            image: "assets/pepper.png",
                            title: "Bell Pepper Red",
                            price: 13,
                            press: () {}),
                        ProductView(
                            image: "assets/redmeat.png",
                            title: "Lamb Meat",
                            price: 17,
                            press: () {}),
                        ProductView(
                            image: "assets/ginger.png",
                            title: "Arabic Ginger",
                            price: 12,
                            press: () {}),
                        ProductView(
                            image: "assets/product4.png",
                            title: "Fresh Lettuce",
                            price: 14,
                            press: () {}),
                        ProductView(
                            image: "assets/product5.png",
                            title: "Fresh Lettuce",
                            price: 14,
                            press: () {}),
                        ProductView(
                            image: "assets/product6.png",
                            title: "Fresh Lettuce",
                            price: 14,
                            press: () {}),
                        ProductView(
                            image: "assets/product7.png",
                            title: "Fresh Lettuce",
                            price: 14,
                            press: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ListCard {
  final String svgScr;
  final String title;
  final VoidCallback press;

  ListCard(this.svgScr, this.title, this.press);
}
