import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icons,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String icons, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          child: OutlinedButton(
            onPressed: press,
            style: OutlinedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)))),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    icons,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                ],
              ),
            ),
          ),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}

class Category {
  final String icon;
  final String title;

  Category({required this.icon, required this.title});
}

// ignore: non_constant_identifier_names
List<Category> categories_list = [
  Category(icon: "assets/apple1.png", title: "Fruit"),
  Category(icon: "assets/broccoli.png", title: "Vegetables"),
  Category(icon: "assets/cheese.png", title: "Diary"),
  Category(icon: "assets/meat.png", title: "Meat"),
  Category(icon: "assets/cheese.png", title: "Diary"),
  Category(icon: "assets/meat.png", title: "Meat"),
];
