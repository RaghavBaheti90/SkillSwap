import 'package:flutter/material.dart';

class search_bar extends StatefulWidget {
  const search_bar({super.key});

  @override
  State<search_bar> createState() => _search_barState();
}

class _search_barState extends State<search_bar> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: hight * 0.09,
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.04, vertical: hight * 0.01),
      decoration: BoxDecoration(
        color: Colors.grey[200], // Light background color
        borderRadius: BorderRadius.circular(hight * 0.005),
      ),
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search for skills....',
            hintStyle:
                TextStyle(fontFamily: "Manrope", fontWeight: FontWeight.w900),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              borderSide: BorderSide(
                color: Colors.purple.shade200,
                width: 2.0,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(
                color: Colors.purple.shade200,
                width: 2.0,
              ),
            ),
            prefixIcon: Icon(Icons.search, color: Colors.purple.shade200),
          ),
        ),
      ),
    );
  }
}
