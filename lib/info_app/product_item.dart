import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///header
        Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  'https://th.bing.com/th/id/OIP.DFJmNGuKDChZW0BUgmy9_QHaFj?w=233&h=180&c=7&r=0&o=5&pid=1.7'),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Movie App',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  'Created by Flutter',
                  style: TextStyle(fontSize: 17, color: Colors.white54),
                ),
              ],
            )
          ],
        ),

        ///title
        Padding(
          padding: EdgeInsets.only(left: 20.0, top: 20),
          child: SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Description :',
                  style: TextStyle(color: Colors.white60),
                ),
                SizedBox(
                  width: 250,
                  height: 300,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    style: TextStyle(color: Colors.white),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
