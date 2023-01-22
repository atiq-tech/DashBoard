import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newdashbigbuy/drawer/drawer_items.dart';

class DrawerSection extends StatefulWidget {
  const DrawerSection({super.key});

  @override
  State<DrawerSection> createState() => _DrawerSectionState();
}

class _DrawerSectionState extends State<DrawerSection> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 178, 210, 236),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw8tnmRAobUlTWwXTzG0yJevfymCAQw00wZw&usqp=CAU'),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name:Muhammad Atiq',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Phone:01700525823',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Email:atik1234@gmail.com',
                      style: TextStyle(
                          color: Color.fromARGB(255, 110, 109, 109),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
          ),
          DrawerItems(icon: Icons.person,text: 'My Profile',),
          DrawerItems(icon: Icons.group,text: 'Update Profile',),
           DrawerItems(icon: Icons.lock,text: 'Change Password',),
            DrawerItems(icon: Icons.phone,text: 'Change Mobile No',),
             DrawerItems(icon: Icons.lock_clock_sharp,text: 'My Order',),
              DrawerItems(icon: Icons.wallet_giftcard,text: 'My Wallet',),
               DrawerItems(icon: Icons.local_atm,text: 'My Coupon List',),
                DrawerItems(icon: Icons.inventory,text: 'invite',),
                 DrawerItems(icon: Icons.login,text: 'Logout',)
          // Card(
          //   child: Padding(
          //     padding: const EdgeInsets.all(12.0),
          //     child: Row(
          //       children: [
          //         Icon(Icons.person),
          //         SizedBox(width: 10.0),
          //         Text(
          //           'Update Profile',
          //           style: TextStyle(
          //               color: Color.fromARGB(255, 68, 67, 67),
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w600),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Card(
          //   child: Padding(
          //     padding: const EdgeInsets.all(12.0),
          //     child: Row(
          //       children: [
          //         Icon(Icons.lock),
          //         SizedBox(width: 10.0),
          //         Text(
          //           'Change Password',
          //           style: TextStyle(
          //               color: Color.fromARGB(255, 68, 67, 67),
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w600),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Card(
          //   child: Padding(
          //     padding: const EdgeInsets.all(12.0),
          //     child: Row(             
          //       children: [
          //         Icon(Icons.phone),
          //         SizedBox(width: 10.0),
          //         Text(
          //           'Change Mobile No',
          //           style: TextStyle(
          //               color: Color.fromARGB(255, 68, 67, 67),
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w600),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Card(
          //   child: Padding(
          //     padding: const EdgeInsets.all(12.0),
          //     child: Row(
          //       children: [
          //         Icon(Icons.other_houses),
          //         SizedBox(width: 10.0),
          //         Text(
          //           'My Order',
          //           style: TextStyle(
          //               color: Color.fromARGB(255, 68, 67, 67),
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w600),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          // Card(
          //   child: Padding(
          //     padding: const EdgeInsets.all(12.0),
          //     child: Row(
          //       children: [
          //         Icon(Icons.wallet),
          //         SizedBox(width: 10.0),
          //         Text(
          //           'My Wallet',
          //           style: TextStyle(
          //               color: Color.fromARGB(255, 68, 67, 67),
          //               fontSize: 20.0,
          //               fontWeight: FontWeight.w600),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

