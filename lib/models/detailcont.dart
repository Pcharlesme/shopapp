import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceryapp/widgets/constant.dart';

class ProductBox extends StatelessWidget {
  final String title;
  final String subtitle;
  final String icons;

  const ProductBox(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xffF3F5F7),
            borderRadius: BorderRadius.circular(13),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),

          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Container(
                  height: 42,
                  width: 43,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: kButColor),
                  ),
                  child: Image(image: AssetImage(icons)),
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(subtitle),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
