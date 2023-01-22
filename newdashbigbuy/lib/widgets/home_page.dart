import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:badges/badges.dart';
import 'package:newdashbigbuy/appbar/appbar_section.dart';
import 'package:newdashbigbuy/commontext/photo_gallery_with_viewall.dart';
import 'package:newdashbigbuy/divider.dart';
import 'package:newdashbigbuy/models/featured_products_model.dart';
import 'package:newdashbigbuy/models/hot_deal_product_model.dart';
import 'package:newdashbigbuy/models/new_arrival_model.dart';
import 'package:newdashbigbuy/products/brands_section.dart';
import 'package:newdashbigbuy/products/carousel_items.dart';
import 'package:newdashbigbuy/products/explore_category_items.dart';
import 'package:newdashbigbuy/sizebox/sizebox.dart';
import 'package:newdashbigbuy/view_items/view_photo_lastone.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final hotDealProductdata = HotDealProductModel.generatedMySourecList();
  final featuredProductdata = FeaturedProductModel.generatedMySourecList();
  final newArrivaldata = NewArrivalModel.generatedMySourecList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarSection(),
            Container(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselItems(),
                  heightboxsize(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Explore Categories',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800),
                      ),
                      Container(
                        height: 25.0,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            border: Border.all(color: Colors.blue)),
                        child: Row(
                          children: const [
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
                              'See All',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  ExploreCategoryItems(),
                  heightboxsize(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hot Deal Products',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800),
                      ),
                      Container(
                        height: 25.0,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            border: Border.all(color: Colors.blue)),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 10.0,
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
                              'See All',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  heightboxsize(),
                  divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300.0,
                    padding: EdgeInsets.only(
                        top: 10.0, left: 5.0, right: 5.0, bottom: 5.0),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        //physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 170.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 4,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                '${hotDealProductdata[index].img}'),
                                            fit: BoxFit.cover),
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(15.0),
                                            topRight: Radius.circular(15.0)),
                                      ),
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 10,
                                            left: 10.0,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {});
                                              },
                                              child: Container(
                                                  height: 22.0,
                                                  width: 80.0,
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 253, 31, 24),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3.0),
                                                  ),
                                                  child: Center(
                                                      child: Text(
                                                    '${hotDealProductdata[index].redtitle}',
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12.0),
                                                  ))),
                                            ),
                                          ),
                                          Positioned(
                                            top: 10,
                                            right: 10,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {});
                                              },
                                              child: Container(
                                                  height: 22.0,
                                                  width: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3.0),
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      '${hotDealProductdata[index].discount}',
                                                      style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 12.0),
                                                    ),
                                                  )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    flex: 3,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 247, 244, 244),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15.0),
                                            bottomRight: Radius.circular(15.0)),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 6.0),
                                            child: Text(
                                              '${hotDealProductdata[index].title}',
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 56, 55, 55),
                                                  fontSize: 14.0),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5.0),
                                            child: Text(
                                              'Code:${hotDealProductdata[index].code}',
                                              style: const TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 56, 55, 55),
                                                  fontSize: 14.0),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 30.0),
                                            child: Row(
                                              children: [
                                                Text(
                                                  '\$${hotDealProductdata[index].price} ',
                                                  style: const TextStyle(
                                                      color: Color.fromARGB(
                                                          255, 221, 90, 73),
                                                      fontSize: 14.0),
                                                ),
                                                Text(
                                                  ' \$${hotDealProductdata[index].crossprice}',
                                                  style: const TextStyle(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      color: Color.fromARGB(
                                                          255, 221, 90, 73),
                                                      fontSize: 14.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                          heightboxsize(),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 18.0),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 25.0,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      6,
                                                  decoration: BoxDecoration(
                                                     
                                                      border: Border.all(
                                                          color: Colors.red)),
                                                  child: const Center(
                                                    child: Text(
                                                      'Buy Now',
                                                      style: TextStyle(
                                                          color: Color.fromARGB(
                                                              255, 211, 72, 7),
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10.0,
                                                ),
                                                Container(
                                                  height: 25.0,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width /
                                                      6,
                                                  decoration: BoxDecoration(
                                                    
                                                      border: Border.all(
                                                          color: Colors.blue)),
                                                  child: const Center(
                                                    child: Text(
                                                      'Add Cart',
                                                      style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          );
                        },
                        separatorBuilder: (_, index) => SizedBox(width: 15.0),
                        itemCount: hotDealProductdata.length),
                  ),
                  heightboxsize(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Featured Products',
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800),
                      ),
                      Container(
                        height: 25.0,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            border: Border.all(color: Colors.blue)),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 10.0,
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
                              'See All',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  heightboxsize(),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: featuredProductdata.length,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15.0,
                              crossAxisSpacing: 15.0,
                              childAspectRatio: 4 / 7),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 220.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              '${featuredProductdata[index].img}'),
                                          fit: BoxFit.cover),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0)),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {});
                                            },
                                            child: Container(
                                                height: 22.0,
                                                width: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.0),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '${featuredProductdata[index].discount}',
                                                    style: const TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 255, 254, 254),
                                                        fontSize: 12.0),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 247, 244, 244),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6.0),
                                          child: Text(
                                            '${featuredProductdata[index].title}',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 56, 55, 55),
                                                fontSize: 14.0),
                                          ),
                                        ),
                                        heightboxsize(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                            'Code:${featuredProductdata[index].code}',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 56, 55, 55),
                                                fontSize: 14.0),
                                          ),
                                        ),
                                        heightboxsize(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 25.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                '   \$${featuredProductdata[index].price}',
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 221, 90, 73),
                                                    fontSize: 14.0),
                                              ),
                                              Text(
                                                ' \$${featuredProductdata[index].crossprice}',
                                                style: const TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Color.fromARGB(
                                                        255, 221, 90, 73),
                                                    fontSize: 14.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                        heightboxsize(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 18.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.red)),
                                                child: const Center(
                                                  child: Text(
                                                    'Buy Now',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 211, 72, 7),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Container(
                                                height: 25.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.blue)),
                                                child: const Center(
                                                  child: Text(
                                                    'Add Cart',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        );
                      }),
                  heightboxsize(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'New Arrival Products',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800),
                      ),
                      Container(
                        height: 25.0,
                        width: MediaQuery.of(context).size.width / 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3.0),
                            border: Border.all(color: Colors.blue)),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 10.0,
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
                              'See All',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  heightboxsize(),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 15.0,
                              crossAxisSpacing: 15.0,
                              childAspectRatio: 4 / 7),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 220.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              '${newArrivaldata[index].img}'),
                                          fit: BoxFit.cover),
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15.0),
                                          topRight: Radius.circular(15.0)),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          top: 10,
                                          right: 10,
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {});
                                            },
                                            child: Container(
                                                height: 20.0,
                                                width: 60.0,
                                                decoration: BoxDecoration(
                                                  color:  Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          3.0),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    '${newArrivaldata[index].discount}',
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14.0),
                                                  ),
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                              Expanded(
                                  flex: 3,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                     color: Color.fromARGB(255, 247, 244, 244),
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0)),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 6.0),
                                          child: Text(
                                            '${newArrivaldata[index].title}',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 56, 55, 55),
                                                fontSize: 14.0),
                                          ),
                                        ),
                                        heightboxsize(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                            'Code:${newArrivaldata[index].code} ',
                                            style: const TextStyle(
                                                color: Color.fromARGB(
                                                    255, 56, 55, 55),
                                                fontSize: 14.0),
                                          ),
                                        ),
                                        heightboxsize(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 22.0),
                                          child: Row(
                                            children: [
                                              Text(
                                                '  \$${newArrivaldata[index].price} ',
                                                style: const TextStyle(
                                                    color: Color.fromARGB(
                                                        255, 221, 90, 73),
                                                    fontSize: 14.0),
                                              ),
                                              Text(
                                                ' \$${newArrivaldata[index].crossprice}',
                                                style: const TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                    color: Color.fromARGB(
                                                        255, 221, 90, 73),
                                                    fontSize: 14.0),
                                              ),
                                            ],
                                          ),
                                        ),
                                        heightboxsize(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 16.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 25.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.red)),
                                                child: const Center(
                                                  child: Text(
                                                    'Buy Now',
                                                    style: TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 211, 72, 7),
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10.0,
                                              ),
                                              Container(
                                                height: 25.0,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    6,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.blue)),
                                                child: const Center(
                                                  child: Text(
                                                    'Add Cart',
                                                    style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 12.0,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        );
                      }),
                  heightboxsize(),
                  BrandsSection(),
                  PhotogallerywithViewAll(),
                  heightboxsize(),
                  divider(),
                  heightboxsize(),
                  viewPhotolastOne(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
