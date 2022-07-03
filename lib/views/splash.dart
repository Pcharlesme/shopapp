import 'dart:async';

import 'package:flutter/material.dart';

import 'package:groceryapp/views/welcome.dart';
import 'package:groceryapp/widgets/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), (() {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => WelcomePage()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor2,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage("assets/applogo.png"),
                fit: BoxFit.fill,
              ),
            ),
            Text(
              "Grocery",
              style: TextStyle(
                fontFamily: "DMSans",
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
