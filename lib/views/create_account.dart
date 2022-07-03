import 'package:flutter/material.dart';
import 'package:groceryapp/views/homepage.dart';
import 'package:groceryapp/views/narbar.dart';
import 'package:groceryapp/widgets/buttoncustom.dart';

import '../widgets/constant.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/signup.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(
                    child: Text(
                  'Create Account to get started',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "DMSans",
                      color: Color.fromARGB(255, 17, 13, 0),
                      fontWeight: FontWeight.bold),
                )),
                Image(
                  image: AssetImage("assets/logintub.png"),
                  height: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        fillColor: Color(0xffe7edeb),
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 14, 1, 1)),
                        hintText: 'Email address'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        fillColor: Color(0xffe7edeb),
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 14, 1, 1)),
                        hintText: 'Phone Number'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const TextField(
                    obscureText: true,
                    autocorrect: false,
                    autofocus: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.email,
                        ),
                        fillColor: Color(0xffe7edeb),
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 14, 1, 1)),
                        hintText: 'Password'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CustomBut(
                      title: "Create Account",
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      size: 300,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Already A Member",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Login now",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: kButColor),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
