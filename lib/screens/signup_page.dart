import 'package:flutter/material.dart';
import 'package:skill_swap/elements/Button.dart';
import 'package:skill_swap/elements/custom_login_tab.dart';
import 'package:skill_swap/elements/text_formfill.dart';

class signup_page extends StatefulWidget {
  const signup_page({super.key});

  @override
  State<signup_page> createState() => _signup_pageState();
}

class _signup_pageState extends State<signup_page> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3F7),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: hight * 0.07,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: hight * 0.02, vertical: hight * 0.002),
                    child: Text(
                      "Welcome Back,",
                      style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: hight * 0.04,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: hight * 0.02),
                    child: Text(
                      "Good to see you again",
                      style: TextStyle(
                          color: Color(0xFF1E1E1E),
                          fontSize: hight * 0.02,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: hight * 0.02,
                        left: hight * 0.02,
                        bottom: hight * 0.02,
                        top: hight * 0.05),
                    child: Center(
                        child: formfill(
                      icon: Icons.person,
                      hintText: "Email",
                    )),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: hight * 0.02,
                        left: hight * 0.02,
                        top: hight * 0,
                        bottom: hight * 0.03),
                    child: Center(
                        child: formfill(
                      icon: Icons.remove_red_eye,
                      hintText: "Password",
                    )),
                  ),
                ],
              ),
              Text(
                "Forget Password",
                style: TextStyle(fontSize: hight * 0.02),
              ),
              SizedBox(
                height: hight * 0.05,
              ),
              CustomButton(
                Tital: "Signup",
                ontap: () {},
              ),
              SizedBox(
                height: hight * 0.03,
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
                indent: width * 0.05,
                endIndent: width * 0.05,
              ),
              Text(
                "Or Contunue With",
                style: TextStyle(
                    fontSize: hight * 0.02, fontWeight: FontWeight.w400),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: hight * 0.04, left: hight * 0, right: hight * 0),
                    child: custom_login_tab(
                      Name: "Google",
                      image: "assets/google.png",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: hight * 0.04, left: width * 0, right: hight * 0.0),
                    child: custom_login_tab(
                      Name: "Facebook",
                      image: "assets/facebook.png",
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
