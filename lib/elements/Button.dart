import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String Tital;
  final VoidCallback ontap;
  CustomButton({super.key, required this.Tital, required this.ontap});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.ontap();
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFF6750A4), borderRadius: BorderRadius.circular(10)),
        height: hight * 0.08,
        width: width * 0.7,
        child: Center(
          child: Text(
            widget.Tital,
            style: TextStyle(fontSize: hight * 0.02, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
