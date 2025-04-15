import 'package:flutter/material.dart';
import 'package:skill_swap/elements/home_sceen_tab.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F3F7),
      body: SafeArea(
          child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: hight * 0.02, vertical: hight * 0.002),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: hight * 0.03, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: hight * 0.02, vertical: hight * 0.002),
                child: Text(
                  "Harry!👋",
                  style: TextStyle(
                      fontSize: hight * 0.04, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: hight * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: home_screen_tab(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: width * 0.05, vertical: hight * 0.04),
                child: home_screen_tab(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: home_screen_tab(),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
