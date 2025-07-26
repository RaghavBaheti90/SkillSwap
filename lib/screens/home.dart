import 'package:flutter/material.dart';
import 'package:skill_swap/elements/bottom_taskbar.dart';
import 'package:skill_swap/elements/home_sceen_tab.dart';
import 'package:skill_swap/elements/search_bar.dart';
import 'package:skill_swap/elements/tags.dart';
import 'package:skill_swap/elements/top_skills_box.dart';
import 'package:skill_swap/screens/chat_page.dart';
import 'package:skill_swap/screens/login_page.dart';

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
      bottomNavigationBar: bottom_taskbar(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  backgroundColor: Color(0xFFF4F3F7),
                  elevation: 0,
                  toolbarHeight: hight * 0.15,
                  automaticallyImplyLeading: false,
                  flexibleSpace: Padding(
                    padding: EdgeInsets.only(top: hight * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: hight * 0.02,
                                  vertical: hight * 0.002),
                              child: Text(
                                "Welcome",
                                style: TextStyle(
                                    fontSize: hight * 0.03,
                                    fontFamily: "Manrope",
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: hight * 0.02,
                                  vertical: hight * 0.002),
                              child: Text(
                                "Harry!👋",
                                style: TextStyle(
                                    fontSize: hight * 0.04,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(hight * 0.03),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => chat_page()));
                            },
                            child: Container(
                              width: width * 0.12,
                              child: Image.asset("assets/chat.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   height: hight * 0.03,
                // ),
                search_bar(),
                SizedBox(
                  height: hight * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: hight * 0.0),
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Tags(
                          tagList: ["Programming", "Cooking", "Music", "Art"])),
                ),
                SizedBox(
                  height: hight * 0.01,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: hight * 0.02, vertical: hight * 0.02),
                  child: Text(
                    "Top Skill Swappers",
                    style: TextStyle(
                        fontFamily: "Manrope",
                        fontSize: hight * 0.03,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: hight * 0.02),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          7,
                          (index) => Padding(
                                padding: EdgeInsets.all(hight * 0.015),
                                child: top_skills_box(),
                              )),
                    ),
                  ),
                ),
                // SizedBox(
                //   height: hight * 0.04,
                // ),
                // Padding(
                //   padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                //   child: home_screen_tab(),
                // ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: hight * 0.04),
                  child: home_screen_tab(),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
