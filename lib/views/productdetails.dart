import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceryapp/models/detailcont.dart';
import 'package:groceryapp/views/cart.dart';
import 'package:groceryapp/widgets/constant.dart';

import '../models/product_list.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 223, 243, 224),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.green),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/maskgal.png"),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.28,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/minbut.png"),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "2",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset("assets/addnut.png"),
                ],
              ),
            ),
          ),
          const SizedBox(height: 5),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 1, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      const SizedBox(width: defaultPadding),
                      Text(
                        "\$" + product.price.toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine..",
                    ),
                  ),
                  Center(
                    child: Container(
                      child: Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        children: const [
                          ProductBox(
                              title: "100%",
                              subtitle: "Organic",
                              icons: "assets/apple.png"),
                          ProductBox(
                              title: "1 Year",
                              subtitle: "Expiration",
                              icons: "assets/calen.png"),
                          ProductBox(
                              title: "4.8(250)",
                              subtitle: "Reviews",
                              icons: "assets/star.png"),
                          ProductBox(
                              title: "80 kcal",
                              subtitle: "100 Gram",
                              icons: "assets/drop.png"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Center(
                    child: SizedBox(
                      width: 260,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CartPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: kButColor, shape: const StadiumBorder()),
                        child: const Text("Add to Cart"),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
