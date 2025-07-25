import 'dart:math';
import 'package:flutter/material.dart';

class top_skills_box extends StatefulWidget {
  const top_skills_box({Key? key}) : super(key: key);

  @override
  _top_skills_boxState createState() => _top_skills_boxState();
}

class _top_skills_boxState extends State<top_skills_box> {
  final List<String> images = [
    "assets/men1.png",
    "assets/women1.png",
    "assets/boy1.png",
    // "assets/women2.png",
    "assets/boy2.png",
  ];

  final List<String> names = [
    "John",
    "Lisa",
    "Tommy",
    // "Anna",
    "Michael",
  ];

  final List<String> tital = [
    "Barista",
    "Java Trainer",
    "Frontend Developer",
    // "Trainee",
    "Content Writer",
  ];

  late String selectedImage;
  late String selectedName;
  late String selectedTitle;
  late int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = Random().nextInt(images.length);
    selectedImage = images[selectedIndex];
    selectedName = names[selectedIndex];
    selectedTitle = tital[selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        CircleAvatar(
          radius: width * 0.15,
          backgroundColor: Colors.purple[700],
          backgroundImage: AssetImage(selectedImage),
        ),
        SizedBox(height: width * 0.02), // spacing between image and name
        Text(
          selectedName,
          style: TextStyle(
            fontFamily: "Manrope",
            fontSize: width * 0.04,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: width * 0.01),
        Text(
          selectedTitle,
          style: TextStyle(
            fontFamily: "Manrope",
            fontSize: width * 0.035,
            fontWeight: FontWeight.w900,
            color: Colors.purple[700],
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
