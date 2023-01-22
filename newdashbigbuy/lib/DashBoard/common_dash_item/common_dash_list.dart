import 'package:flutter/material.dart';

class CommonDashList extends StatelessWidget {
  CommonDashList(
      {Key? key,
      required this.icon,
      required this.text,
      required this.color,
      required this.style,required this.justify});
  IconData icon;
  String text;
  Color color;
  TextStyle style;
  TextAlign justify;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, top: 15.0, bottom: 15.0),
        child: Row(
          children: [
            Icon(
              icon,
              size: 14.0,
              color: Colors.grey,
            ),
            SizedBox(width: 5.0),
            Text(
              
              '$text',
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}
