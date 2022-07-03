import 'package:flutter/material.dart';
import 'package:groceryapp/widgets/constant.dart';

class CustomBut extends StatelessWidget {
  final String title;
  final double size;
  final VoidCallback press;
  const CustomBut(
      {Key? key, required this.title, required this.press, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 53,
        width: size,
        decoration: BoxDecoration(
          color: kButColor,
          borderRadius: BorderRadius.circular(20),
          shape: BoxShape.rectangle,
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontFamily: "DMSans",
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
