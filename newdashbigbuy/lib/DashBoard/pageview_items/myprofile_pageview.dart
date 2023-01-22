import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyProfilePageView extends StatefulWidget {
  MyProfilePageView({super.key});

  @override
  State<MyProfilePageView> createState() => _MyProfilePageViewState();
}

class _MyProfilePageViewState extends State<MyProfilePageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Color.fromARGB(255, 184, 242, 250),
      padding: EdgeInsets.only(top: 15.0),
      child: SingleChildScrollView(
        child: Column(children: [
          CircleAvatar(
            radius: 35.0,
            backgroundImage: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw8tnmRAobUlTWwXTzG0yJevfymCAQw00wZw&usqp=CAU'),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 1.0,
            width: double.infinity,
            color: Color.fromARGB(255, 121, 118, 118),
          ),
          SizedBox(
            height: 15.0,
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 5.0, top: 5.0, bottom: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: Iftikar Islam Atiq',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Phone: 01700525823',
                    style: TextStyle(
                        color: Color.fromARGB(255, 110, 109, 109),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    'Address:Dhaka Mohammadpur',
                    style: TextStyle(
                        color: Color.fromARGB(255, 110, 109, 109),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Wallet Balance',
                    style: TextStyle(
                        color: Color.fromARGB(255, 117, 135, 236),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' ৳',
                        style: TextStyle(
                          fontStyle: FontStyle.italic,
                             color: Color.fromARGB(255, 90, 199, 104),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                            color: Color.fromARGB(255, 90, 199, 104),
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Hold Balance:0',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          MyProfileItems(
            titletext: 'Orders',
            icon: Icons.mode_standby_rounded,
            numprice: 'Total:1',
          ),
          MyProfileItems(
            titletext: 'Delivered Order',
            icon: Icons.menu_sharp,
            numprice: 'Total:0',
          ),
          MyProfileItems(
            titletext: 'Cancel Order',
            icon: Icons.menu_sharp,
            numprice: 'Total:0',
          ),
        ]),
      ),
    );
  }
}

class MyProfileItems extends StatelessWidget {
  MyProfileItems({
    Key? key,
    required this.titletext,
    required this.icon,
    required this.numprice,
  }) : super(key: key);
  String titletext;
  IconData icon;
  String numprice;
  String? textlast;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 10.0, bottom: 10.0, left: 10.0, right: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$titletext',
              style: TextStyle(
                  color: Color.fromARGB(255, 117, 135, 236),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  color: Color.fromARGB(255, 90, 199, 104),
                ),
                Text(
                  '$numprice',
                  style: TextStyle(
                      color: Color.fromARGB(255, 90, 199, 104),
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
