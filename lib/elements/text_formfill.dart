import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class formfill extends StatefulWidget {
  final String hintText;
  final IconData? icon;
  const formfill({super.key, required this.hintText, required this.icon});

  @override
  State<formfill> createState() => _formfillState();
}

class _formfillState extends State<formfill> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // borderRadius: BorderRadius.circular(5), border: Border.all()
          ),
      width: width * 0.85,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.start,

        style: TextStyle(fontSize: 16), // Adjust the font size here
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon, color: Colors.grey),
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: Colors.black),
          ),
          filled: true,
          border: InputBorder.none,
          hintText: widget.hintText,
          hintStyle: TextStyle(fontSize: 16), // Adjust the hint text size here
        ),
      ),
    );
  }
}
