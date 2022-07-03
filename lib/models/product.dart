import 'package:flutter/material.dart';
import 'package:groceryapp/widgets/constant.dart';

class ProductView extends StatelessWidget {
  final String title;
  final int price;
  final String image;
  final VoidCallback press;
  const ProductView(
      {Key? key,
      required this.title,
      required this.price,
      required this.image,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(3),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFF3F5F7),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              child: Column(
                children: [
                  Image.asset(
                    image,
                    height: 142,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: FloatingActionButton.small(
                      onPressed: () {},
                      backgroundColor: kButColor,
                      child: Icon(Icons.add),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "DMSans",
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$" + price.toString(),
                        style: Theme.of(context).textTheme.subtitle2,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
