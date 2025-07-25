import 'package:flutter/material.dart';
import 'package:skill_swap/elements/book_now_popup.dart';

class home_screen_tab extends StatefulWidget {
  const home_screen_tab({super.key});

  @override
  State<home_screen_tab> createState() => _home_screen_tabState();
}

class _home_screen_tabState extends State<home_screen_tab> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      width: width * 0.9,
      height: hight * 0.2,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/home_tab_back.png', // Replace with your image path
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Container(
            width: width * 0.9,
            height: hight * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 60, // Adjust the radius as needed
                      backgroundImage: AssetImage(
                          'assets/boy_image.png'), // Replace with your image path
                    ),
                    Column(
                      children: [
                        Text(
                          "Raghav",
                          style: TextStyle(
                              fontFamily: "Manrope",
                              fontSize: hight * 0.03,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: hight * 0.01,
                        ),
                        Row(
                          children: [
                            Text(
                              "20\$",
                              style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: hight * 0.02,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: hight * 0.02,
                            ),
                            Text(
                              "Java",
                              style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: hight * 0.02,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: hight * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return booknow_popup();
                              },
                            );
                          },
                          child: Container(
                            height: hight * 0.05,
                            width: width * 0.3,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 241, 161, 42),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                                child: Text(
                              "Book Now",
                              style: TextStyle(
                                  fontFamily: "Manrope",
                                  fontSize: hight * 0.02,
                                  fontWeight: FontWeight.w700),
                            )),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
