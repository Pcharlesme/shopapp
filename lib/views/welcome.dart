import 'package:flutter/material.dart';
import 'package:groceryapp/views/create_account.dart';
import 'package:groceryapp/views/login.dart';
import 'package:groceryapp/widgets/buttoncustom.dart';
import 'package:groceryapp/widgets/constant.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/appbg.jpg"), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 85),
              child: Image(
                image: AssetImage("assets/applogo.png"),
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                '  Get your groceries\ndelivered to your home',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "DMSans",
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'The best delivery app in town for \n delivering your daily fresh groceries',
              style: TextStyle(
                fontSize: 18,
                fontFamily: "DMSans",
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 142, 139, 139),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomBut(
                title: "Shop now",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                size: 190,
              ),
            ),
            const Expanded(
                child: Image(
              image: AssetImage("assets/welcome.png"),
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }
}
