import 'package:flutter/material.dart';

class PhotogallerywithViewAll extends StatelessWidget {
  const PhotogallerywithViewAll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Photo Gallery',
          style: TextStyle(
              color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w800),
        ),
        Container(
          height: 25.0,
          width: MediaQuery.of(context).size.width / 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.0),
              border: Border.all(color: Colors.blue)),
          child: Row(
            children: [
              SizedBox(
                width: 5.0,
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.blue,
                size: 14.0,
              ),
              SizedBox(
                width: 5.0,
              ),
              Text(
                'View All',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
