import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceryapp/views/checkout.dart';
import 'package:groceryapp/views/narbar.dart';

import '../widgets/constant.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          title: const Text(
            "Cart",
            style: TextStyle(
              color: Colors.black,
            ),
          )),
      bottomNavigationBar: const BottomNavBar(),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(10),
              height: 90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(2, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color: Colors.white30,
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  Image.asset("assets/pepper.png"),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const <Widget>[
                        Text(
                          "Pepper Nut",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "DMSans"),
                        ),
                        Text(
                          " 1kg,  13",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
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
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10),
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(2, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: Colors.white30,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Image.asset("assets/product4.png"),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Butternut Squash",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "DMSans"),
                      ),
                      Text(
                        " 1kg,  43",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset("assets/minbut.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "4",
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
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10),
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(2, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: Colors.white30,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Image.asset("assets/ginger.png"),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Arabic Ginger",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "DMSans"),
                      ),
                      Text(
                        " 2kg,  21",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset("assets/minbut.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "6",
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
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10),
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(2, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: Colors.white30,
                ),
              ],
            ),
            child: Row(
              children: <Widget>[
                Image.asset("assets/product6.png"),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Organic Carrot",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: "DMSans"),
                      ),
                      Text(
                        " 1kg,  18",
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.asset("assets/minbut.png"),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "3",
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
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 260,
            height: 45,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckOutPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  primary: kButColor, shape: const StadiumBorder()),
              child: const Text("Check Out"),
            ),
          ),
        ],
      ),
    );
  }
}
