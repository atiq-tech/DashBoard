import 'package:flutter/material.dart';

class BrandsSection extends StatelessWidget {
  const BrandsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Brands',
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w800),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 0.5,
          width: double.infinity,
          color: Color.fromARGB(255, 207, 204, 204),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 100.0,
          child: ListView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 118.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/kappa.jpg'), fit: BoxFit.fill),
                ),
              ),
              Container(
                width: 118.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/zara.png'), fit: BoxFit.fill),
                ),
              ),
              Container(
                width: 118.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/maine.png'), fit: BoxFit.fill),
                ),
              ),
              Container(
                width: 118.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/redtape.jpg'),
                      fit: BoxFit.fill),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
