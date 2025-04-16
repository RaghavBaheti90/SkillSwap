import 'package:flutter/material.dart';

class bottom_taskbar extends StatefulWidget {
  const bottom_taskbar({super.key});

  @override
  State<bottom_taskbar> createState() => _bottom_taskbarState();
}

class _bottom_taskbarState extends State<bottom_taskbar> {
  late double hight = MediaQuery.of(context).size.height;
  late double width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(hight * 0.04),
            topRight: Radius.circular(hight * 0.04)),
        child: BottomAppBar(
          color: Color.fromARGB(255, 11, 25, 63),
          shape: const CircularNotchedRectangle(),
          notchMargin: hight * 0.03,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                color: Colors.grey[400],
                icon: const Icon(Icons.home),
                onPressed: () {
                  // Handle home button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                color: Colors.grey[400],
                onPressed: () {
                  // Handle search button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.notifications),
                color: Colors.grey[400],
                onPressed: () {
                  // Handle notifications button press
                },
              ),
              IconButton(
                icon: const Icon(Icons.person),
                color: Colors.grey[400],
                onPressed: () {
                  // Handle profile button press
                },
              ),
            ],
          ),
        ));
  }
}
