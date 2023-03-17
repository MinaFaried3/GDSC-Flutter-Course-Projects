import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({Key? key, required this.icon, required this.url})
      : super(key: key);
  final IconData icon;
  final String url;
  final Color color = Colors.white60;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
            size: 38,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            url,
            style: TextStyle(
                color: color,
                decoration: TextDecoration.underline,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
