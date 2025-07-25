import 'package:flutter/material.dart';

class Tags extends StatelessWidget {
  final List<String> tagList;

  const Tags({super.key, required this.tagList});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Wrap(
      spacing: width * 0.03,
      children: tagList.map((tag) {
        return Chip(
          label: Text(
            tag,
            style:
                TextStyle(fontFamily: "Manrope", fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.white,
          labelStyle: TextStyle(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        );
      }).toList(),
    );
  }
}
