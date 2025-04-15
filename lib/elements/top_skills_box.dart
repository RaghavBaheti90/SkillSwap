import 'package:flutter/material.dart';

class top_skills_box extends StatefulWidget {
  const top_skills_box({super.key});

  @override
  State<top_skills_box> createState() => _top_skills_boxState();
}

class _top_skills_boxState extends State<top_skills_box> {
  @override
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: width * 0.15,
      backgroundColor: Colors.purple[300],
      backgroundImage: AssetImage("assets/boy2_image.png"),
    );
  }
}
