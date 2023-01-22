import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newdashbigbuy/DashBoard/common_dash_item/common_dash_list.dart';
import 'package:newdashbigbuy/DashBoard/pageview_items/change_mobile_page.dart';
import 'package:newdashbigbuy/DashBoard/pageview_items/change_password_pageview.dart';
import 'package:newdashbigbuy/DashBoard/pageview_items/invite_list_page.dart';
import 'package:newdashbigbuy/DashBoard/pageview_items/my_coupon_page.dart';
import 'package:newdashbigbuy/DashBoard/pageview_items/my_order_page.dart';
import 'package:newdashbigbuy/DashBoard/pageview_items/my_wallet_page.dart';
import 'package:newdashbigbuy/DashBoard/pageview_items/myprofile_pageview.dart';
import 'package:newdashbigbuy/DashBoard/pageview_items/update_profile_pageview.dart';

class HomeDashboardPage extends StatefulWidget {
  const HomeDashboardPage({super.key});

  @override
  State<HomeDashboardPage> createState() => _HomeDashboardPageState();
}

class _HomeDashboardPageState extends State<HomeDashboardPage> {
  PageController _controller = PageController();
  int _selectedDashboardItems = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Image.asset(
          'images/logobig.png',
          width: 150.0,
          height: 50.0,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Center(
              child: Badge(
                badgeColor: Color.fromARGB(255, 12, 115, 250),
                animationDuration: Duration(milliseconds: 300),
                badgeContent: Text(
                  "0",
                  style: TextStyle(color: Colors.white, fontSize: 12.0),
                ),
                child: Icon(
                  Icons.shopping_cart_checkout_outlined,
                  size: 25.0,
                  color: Color.fromARGB(255, 51, 50, 50),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              //color: Color.fromARGB(255, 95, 8, 209),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Color.fromARGB(255, 95, 8, 209),
                      child: Center(
                          child: Text(
                        'Dashboard',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0),
                      )),
                    ),
                  ),
                  Expanded(
                    flex: 12,
                    child: Container(
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedDashboardItems = 0;
                                  _controller
                                      .jumpToPage(_selectedDashboardItems);
                                });
                              },
                              child: CommonDashList(
                                icon: Icons.person,
                                text: 'My Profile',
                                justify: TextAlign.justify,
                                style: TextStyle(
                                    color: _selectedDashboardItems == 0
                                        ? Color.fromARGB(255, 95, 8, 209)
                                        : Colors.white),
                                color: _selectedDashboardItems == 0
                                    ? Colors.white
                                    : Color.fromARGB(255, 95, 8, 209),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedDashboardItems = 1;
                                  _controller
                                      .jumpToPage(_selectedDashboardItems);
                                });
                              },
                              child: CommonDashList(
                                icon: Icons.lock,
                                text: 'Update Profile',
                                justify: TextAlign.justify,
                                style: TextStyle(
                                    color: _selectedDashboardItems == 1
                                        ? Color.fromARGB(255, 95, 8, 209)
                                        : Colors.white),
                                color: _selectedDashboardItems == 1
                                    ? Colors.white
                                    : Color.fromARGB(255, 95, 8, 209),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedDashboardItems = 2;
                                  _controller
                                      .jumpToPage(_selectedDashboardItems);
                                });
                              },
                              child: CommonDashList(
                                icon: Icons.lock_person_rounded,
                                text: 'Change Password',
                                justify: TextAlign.justify,
                                style: TextStyle(
                                    color: _selectedDashboardItems == 2
                                        ? Color.fromARGB(255, 95, 8, 209)
                                        : Colors.white),
                                color: _selectedDashboardItems == 2
                                    ? Colors.white
                                    : Color.fromARGB(255, 95, 8, 209),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedDashboardItems = 3;
                                  _controller
                                      .jumpToPage(_selectedDashboardItems);
                                });
                              },
                              child: CommonDashList(
                                icon: Icons.phone,
                                text: 'Change Mobile No.',
                                justify: TextAlign.justify,
                                style: TextStyle(
                                    color: _selectedDashboardItems == 3
                                        ? Color.fromARGB(255, 95, 8, 209)
                                        : Colors.white),
                                color: _selectedDashboardItems == 3
                                    ? Colors.white
                                    : Color.fromARGB(255, 95, 8, 209),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedDashboardItems = 4;
                                  _controller
                                      .jumpToPage(_selectedDashboardItems);
                                });
                              },
                              child: CommonDashList(
                                icon: Icons.one_k,
                                text: 'My Order',
                                justify: TextAlign.justify,
                                style: TextStyle(
                                    color: _selectedDashboardItems == 4
                                        ? Color.fromARGB(255, 95, 8, 209)
                                        : Colors.white),
                                color: _selectedDashboardItems == 4
                                    ? Colors.white
                                    : Color.fromARGB(255, 95, 8, 209),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedDashboardItems = 5;
                                  _controller
                                      .jumpToPage(_selectedDashboardItems);
                                });
                              },
                              child: CommonDashList(
                                icon: Icons.wallet_giftcard,
                                text: 'My Wallet',
                                justify: TextAlign.justify,
                                style: TextStyle(
                                    color: _selectedDashboardItems == 5
                                        ? Color.fromARGB(255, 95, 8, 209)
                                        : Colors.white),
                                color: _selectedDashboardItems == 5
                                    ? Colors.white
                                    : Color.fromARGB(255, 95, 8, 209),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedDashboardItems = 6;
                                  _controller
                                      .jumpToPage(_selectedDashboardItems);
                                });
                              },
                              child: CommonDashList(
                                icon: Icons.person,
                                text: 'My Coupon List',
                                justify: TextAlign.justify,
                                style: TextStyle(
                                    color: _selectedDashboardItems == 6
                                        ? Color.fromARGB(255, 95, 8, 209)
                                        : Colors.white),
                                color: _selectedDashboardItems == 6
                                    ? Colors.white
                                    : Color.fromARGB(255, 95, 8, 209),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _selectedDashboardItems = 7;
                                  _controller
                                      .jumpToPage(_selectedDashboardItems);
                                });
                              },
                              child: CommonDashList(
                                icon: Icons.inventory,
                                text: 'invite',
                                justify: TextAlign.justify,
                                style: TextStyle(
                                    color: _selectedDashboardItems == 7
                                        ? Color.fromARGB(255, 95, 8, 209)
                                        : Colors.white),
                                color: _selectedDashboardItems == 7
                                    ? Colors.white
                                    : Color.fromARGB(255, 95, 8, 209),
                              ),
                            ),
                            CommonDashList(
                              icon: Icons.login_outlined,
                              text: 'Logout',
                              justify: TextAlign.justify,
                              style: TextStyle(
                                  color: _selectedDashboardItems == 8
                                      ? Color.fromARGB(255, 95, 8, 209)
                                      : Colors.white),
                              color: _selectedDashboardItems == 8
                                  ? Colors.white
                                  : Color.fromARGB(255, 95, 8, 209),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: PageView(
                controller: _controller,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  MyProfilePageView(),
                  UpdateProfilePageview(),
                  ChangePasswordPageview(),
                  ChangeMobilePage(),
                  MyOrderPage(),
                  MyWalletPage(),
                  MyCouponPage(),
                  InviteListPage(),
                ],
              )),
        ],
      ),
    );
  }
}
