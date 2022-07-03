import 'package:flutter/material.dart';
import 'package:groceryapp/models/category.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories_list.length,
          (index) => Padding(
            padding: const EdgeInsets.all(12),
            child: CategoryCard(
              title: categories_list[index].title,
              press: () {},
              icons: categories_list[index].icon,
            ),
          ),
        ),
      ),
    );
  }
}
