import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  DrawerItems({Key? key, required this.icon, required this.text,})
      : super(key: key);
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon),
                 SizedBox(width: 10.0),
            Text(
              text,
              style: TextStyle(
                  color: Color.fromARGB(255, 68, 67, 67),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
              ],
            ),
             Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
