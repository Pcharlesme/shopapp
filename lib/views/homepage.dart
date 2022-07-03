import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:groceryapp/models/product.dart';

import 'package:groceryapp/widgets/constant.dart';

import '../models/categories_list.dart';
import '../models/product_list.dart';
import '../widgets/searchwidget.dart';
import 'narbar.dart';
import 'productdetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(defaultBorderRadius),
      ),
      borderSide: BorderSide.none,
    );
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/maskgal.png"),
                        // child: SvgPicture.asset("assets/icons/galroup.svg"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(children: const [
                          Text(
                            "Good morning",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "DMSans",
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Emma Pcharles",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: "DMSans"),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 16, 12, 12),
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // background
                            onPrimary:
                                Color.fromARGB(255, 11, 0, 0), // foreground
                          ),
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/location.svg"),
                          label: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Lagos",
                              style:
                                  TextStyle(fontFamily: "DMSans", fontSize: 13),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(14, 2, 14, 2),
                  child: SearchForm(outlineInputBorder: outlineInputBorder),
                ),
                Image.asset(
                  "assets/banner.png",
                  width: 750,
                ),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontFamily: "DMSans",
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Image(
                      image: AssetImage("assets/facefood.png"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 170),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                                color: kButColor,
                                fontFamily: "DMSans",
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                const Categories(),
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
                      child: Text(
                        "Best Selling",
                        style: TextStyle(
                          fontFamily: "DMSans",
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const Image(
                      image: AssetImage("assets/fire.png"),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 160),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "See All",
                            style: TextStyle(
                                color: kButColor,
                                fontFamily: "DMSans",
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      product_list.length,
                      (index) => ProductView(
                          image: product_list[index].image,
                          title: product_list[index].title,
                          price: product_list[index].price,
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                      product: product_list_large[index])),
                            );
                          }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
