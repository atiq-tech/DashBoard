import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:newdashbigbuy/drawer/drawer_section.dart';

class AppBarSection extends StatefulWidget {
  const AppBarSection({
    Key? key,
  }) : super(key: key);

  @override
  State<AppBarSection> createState() => _AppBarSectionState();
}

class _AppBarSectionState extends State<AppBarSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      width: double.infinity,
      padding: EdgeInsets.only(top: 20.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 10.0,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => DrawerSection()));
                },
                child: Icon(
                  Icons.menu,
                  size: 25.0,
                  color: Color.fromARGB(255, 51, 50, 50),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/logobig.png'),
              ),
            ],
          ),
          SizedBox(
            width: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                Center(
                  child: Badge(
                    badgeColor: Color.fromARGB(255, 12, 115, 250),
                    animationDuration: Duration(milliseconds: 300),
                    badgeContent: Text(
                      "0",
                      style: TextStyle(color: Colors.white, fontSize: 12.0),
                    ),
                    child: Icon(
                      Icons.shopping_cart_checkout_outlined,
                      size: 30.0,
                      color: Color.fromARGB(255, 51, 50, 50),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                InkWell(
                  // onTap: () {
                  //   Navigator.of(context).push(MaterialPageRoute(
                  //       builder: (context) => DrawerSection(

                  //           )));
                  // },
                  child: Icon(
                    Icons.search,
                    size: 25.0,
                    color: Color.fromARGB(255, 51, 50, 50),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
