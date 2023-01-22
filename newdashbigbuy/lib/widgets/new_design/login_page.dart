import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.only(top: 140.0),
        color: Color.fromARGB(239, 12, 1, 112),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(left: 30.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0)),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 10.0),
                Text(
                    'Welcome to Bada Business Commuinity. Enter your mobile number to register to with us'),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          'images/bdlfag.jpg',
                          height: 20.0,
                          width: 25.0,
                        )),
                          SizedBox(width:2.0),
                    Expanded(flex: 1, child: Text('+880')),

                    Expanded(
                      flex: 1,
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Enter Mobile Number',
                            hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.0),
                Center(
                  child: Container(
                    height: 45.0,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color.fromARGB(255, 5, 126, 224),
                          Color.fromARGB(255, 5, 126, 224),
                          Color.fromARGB(255, 61, 157, 236),
                          Color.fromARGB(255, 64, 157, 233),
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            blurRadius: 15.0,
                            spreadRadius: 3.0,
                            color: Colors.grey),
                      ],
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Center(
                      child: Text(
                        'Confirm & Continue',
                        style: TextStyle(
                            color: Color.fromARGB(255, 241, 235, 235),
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
