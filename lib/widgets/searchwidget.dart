import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:groceryapp/widgets/constant.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
    required this.outlineInputBorder,
  }) : super(key: key);

  final OutlineInputBorder outlineInputBorder;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextFormField(
      decoration: InputDecoration(
        hintText: "Search items...",
        filled: true,
        fillColor: Colors.white,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset("assets/icons/search.svg"),
        ),
        suffixIcon: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              primary: kButColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              )),
          child: SvgPicture.asset(
            "assets/icons/Filter.svg",
            color: kBgColor,
          ),
        ),
      ),
    ));
  }
}
