import 'package:flutter/material.dart';
import 'package:groceryapp/views/create_account.dart';
import 'package:groceryapp/widgets/buttoncustom.dart';
import 'package:groceryapp/widgets/constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          const Center(
            child: Image(
              image: AssetImage('assets/logimage.png'),
              height: 300,
              width: 280,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                  child: Text(
                'Login to get started',
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "DMSans",
                    color: Color.fromARGB(255, 17, 13, 0),
                    fontWeight: FontWeight.bold),
              )),
              Image(
                image: AssetImage("assets/logintub.png"),
                height: 60,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 220,
                  width: 430,
                  decoration: BoxDecoration(
                    color: kButColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: const [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              filled: true,
                              fillColor: Color(0xffe7edeb),
                              prefixIcon: Icon(Icons.email),
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 17, 1, 1)),
                              hintText: 'Email address'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          obscureText: true,
                          autocorrect: false,
                          enableSuggestions: false,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              filled: true,
                              prefixIcon: Icon(
                                Icons.lock,
                              ),
                              fillColor: Color(0xffe7edeb),
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 14, 1, 1)),
                              hintText: 'Password'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 160),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: CustomBut(
                    title: 'Login',
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AccountScreen()),
                      );
                    },
                    size: 300,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Not a Member",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Register now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: kButColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}


// Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const CreateAcount()),
//                   );