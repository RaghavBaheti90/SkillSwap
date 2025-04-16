import 'package:flutter/material.dart';

class booknow_popup extends StatefulWidget {
  const booknow_popup({super.key});

  @override
  State<booknow_popup> createState() => _booknow_popupState();
}

class _booknow_popupState extends State<booknow_popup> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: hight * 0.3,
        width: width * 0.7,
        decoration: BoxDecoration(),
        child: Column(
          children: [
            CircleAvatar(
              radius: hight * 0.07,
              backgroundImage: AssetImage("assets/boy_image.png"),
            ),
            SizedBox(
              height: hight * 0.005,
            ),
            Text(
              "Raghav",
              style: TextStyle(
                  fontSize: hight * 0.025, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Skill :",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Text(
                  " JAVA",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Rating: ",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                Text(
                  " 4.9",
                  style: TextStyle(fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: hight * 0.02,
            ),
            Container(
              height: hight * 0.05,
              width: width * 0.3,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 241, 161, 42),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                "Book Now",
                style: TextStyle(
                    fontSize: hight * 0.02, fontWeight: FontWeight.w400),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
