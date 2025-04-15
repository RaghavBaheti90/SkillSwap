import 'package:flutter/material.dart';
import 'package:skill_swap/screens/register_page.dart';

class open_page extends StatefulWidget {
  const open_page({super.key});

  @override
  State<open_page> createState() => _open_pageState();
}

class _open_pageState extends State<open_page> {
  @override
  void initState() {
    super.initState();
    _navigate_to_home();
  }

  _navigate_to_home() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => register_page()));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xFF6750A4),
        body: Stack(
          children: [
            Center(
              child: Text(
                'SkillSwap!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ));
  }
}
