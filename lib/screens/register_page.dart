import 'package:flutter/material.dart';
import 'package:skill_swap/elements/Button.dart';
import 'package:skill_swap/screens/login_page.dart';
import 'package:skill_swap/screens/signup_page.dart';

class register_page extends StatefulWidget {
  const register_page({super.key});

  @override
  State<register_page> createState() => _register_pageState();
}

class _register_pageState extends State<register_page> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/r3_back.png'), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
        ),
        SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login_page()));
                  },
                  Tital: "Log In",
                ),
                SizedBox(
                  height: hight * 0.03,
                ),
                CustomButton(
                  ontap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup_page()));
                  },
                  Tital: "Sign Up",
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
