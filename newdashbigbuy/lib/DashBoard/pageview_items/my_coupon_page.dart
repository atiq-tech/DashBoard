import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCouponPage extends StatefulWidget {
  const MyCouponPage({super.key});

  @override
  State<MyCouponPage> createState() => _MyCouponPageState();
}

class _MyCouponPageState extends State<MyCouponPage> {
  TextEditingController _currentCouponDateController = TextEditingController();
  TextEditingController _nextCouponDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 235, 232, 232),
      padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.folder,
                  color: Color.fromARGB(255, 133, 131, 131),
                ),
                Text(
                  'Coupon List',
                  style: TextStyle(
                      color: Color.fromARGB(255, 109, 106, 106),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.0,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _currentCouponDateController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                        filled: true,
                        fillColor: Color.fromARGB(255, 242, 245, 245),
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                        hintText: '13/01/2023',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 105, 104, 104))),
                  ),
                ),
                Text(
                  'To',
                  style: TextStyle(
                      color: Color.fromARGB(255, 83, 82, 82),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.0,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _nextCouponDateController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                        filled: true,
                        fillColor: Color.fromARGB(255, 242, 245, 245),
                        border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                        hintText: '13/01/2023',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 105, 104, 104))),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 8,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 126, 124, 124)),
                    color: Color.fromARGB(255, 242, 245, 245),
                  ),
                  child: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
