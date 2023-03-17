import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  MyContainer(
      {super.key, required this.icon, required this.icon2, required this.text});
  IconData icon;
  IconData icon2;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(102, 46, 200, 25),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Icon(
              icon,
              size: 50,
              color: Color.fromARGB(255, 107, 105, 105),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 107, 105, 105),
              ),
            ),
            Icon(
              icon2,
              size: 50,
              color: Color.fromARGB(255, 107, 105, 105),
            ),
          ],
        ),
      ),
    );
  }
}
