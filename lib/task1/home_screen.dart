import 'package:flutter/material.dart';
import 'package:gdsc2/task1/widgetContainer.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 207, 178, 89),
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
        ),
        title: const Text('MyAPP'),
        actions: const [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.navigation_outlined),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Wrap(
          spacing: 20,
          runSpacing: 30,
          children: [
            MyContainer(
              icon: Icons.access_alarm,
              text: 'access',
              icon2: Icons.abc_outlined,
            ),
            MyContainer(
              icon: Icons.access_alarm,
              text: 'access',
              icon2: Icons.abc_outlined,
            ),
            MyContainer(
              icon: Icons.access_alarm,
              text: 'access',
              icon2: Icons.abc_outlined,
            ),
            MyContainer(
              icon: Icons.access_alarm,
              text: 'access',
              icon2: Icons.abc_outlined,
            ),
            MyContainer(
              icon: Icons.access_alarm,
              text: 'access',
              icon2: Icons.abc_outlined,
            ),
            MyContainer(
              icon: Icons.access_alarm,
              text: 'access',
              icon2: Icons.abc_outlined,
            ),
            MyContainer(
              icon: Icons.access_alarm,
              text: 'access',
              icon2: Icons.abc_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
