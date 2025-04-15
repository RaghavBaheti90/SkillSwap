import 'package:flutter/material.dart';

class custom_login_tab extends StatefulWidget {
  final String image;
  final String Name;
  const custom_login_tab({
    super.key,
    required this.image,
    required this.Name,
  });

  @override
  State<custom_login_tab> createState() => _custom_login_tabState();
}

class _custom_login_tabState extends State<custom_login_tab> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), border: Border.all()),
      height: hight * 0.07,
      width: width * 0.4,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: Image(image: AssetImage(widget.image)),
          ),
          Text(
            widget.Name,
            style:
                TextStyle(fontSize: hight * 0.015, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
