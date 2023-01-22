
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:newdashbigbuy/widgets/home_page.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  int _currentIndex = 0;
  int _page = 0;
  List pages = [
    HomePage(),
    // CartItemPage(),
    // GridMenuPage(),
    // PersonPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: pages[_currentIndex],
        bottomNavigationBar: Container(
          height: 60.0,
       margin: EdgeInsets.only(top: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            //color: Colors.red,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: 0,
              height: 50.0,
              items: <Widget>[
                Icon(Icons.home, size: 30,color: Colors.black,),
                Icon(Icons.list, size: 30,color: Colors.black,),
                Icon(Icons.compare_arrows, size: 30,color: Colors.black,),
                Icon(Icons.call_split, size: 30,color: Colors.black,),
                Icon(Icons.perm_identity, size: 30,color: Colors.black,),
              ],
              color: Color.fromARGB(255, 170, 158, 180),
              buttonBackgroundColor: Color.fromARGB(255, 114, 112, 112),
              backgroundColor: Color.fromARGB(255, 229, 235, 236),
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 600),
              onTap: (index) {
                setState(() {
                  _page = index;
                });
              },
              letIndexChange: (index) => true,
            ),
          ),
        ));
  }
}
