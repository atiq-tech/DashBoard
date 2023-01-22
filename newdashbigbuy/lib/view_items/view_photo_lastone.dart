import 'package:flutter/material.dart';

class viewPhotolastOne extends StatelessWidget {
  const viewPhotolastOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/cat2.jpg'), fit: BoxFit.fitHeight),
      ),
    );
  }
}
