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
    // Add more image paths as needed
  ];

  late String selectedImage;

  @override
  void initState() {
    super.initState();
    selectedImage = images[Random().nextInt(images.length)];
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return CircleAvatar(
      radius: width * 0.15,
      backgroundColor: Colors.purple[300],
      backgroundImage: AssetImage(selectedImage),
    );
  }
}
