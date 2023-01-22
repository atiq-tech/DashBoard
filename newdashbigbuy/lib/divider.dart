import 'package:flutter/material.dart';

class divider extends StatelessWidget {
  const divider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      width: double.infinity,
      color: Color.fromARGB(255, 207, 204, 204),
    );
  }
}