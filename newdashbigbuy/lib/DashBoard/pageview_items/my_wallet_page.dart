
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWalletPage extends StatefulWidget {
  const MyWalletPage({super.key});

  @override
  State<MyWalletPage> createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage> {
  TextEditingController _currentwalletDateController = TextEditingController();
  TextEditingController _nextwalletDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 235, 232, 232),
      padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'My Wallet History',
              style: TextStyle(
                  color: Color.fromARGB(255, 109, 106, 106),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.0,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _currentwalletDateController,
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
                    controller: _nextwalletDateController,
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
                SizedBox(height: 15.0,),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: MediaQuery.of(context).size.height / 22,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 9, 138, 224),
                      ),
                      child: Center(child: Text('Show',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
