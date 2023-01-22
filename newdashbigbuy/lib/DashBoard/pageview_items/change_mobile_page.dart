import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChangeMobilePage extends StatefulWidget {
  const ChangeMobilePage({super.key});

  @override
  State<ChangeMobilePage> createState() => _ChangeMobilePageState();
}

class _ChangeMobilePageState extends State<ChangeMobilePage> {
  TextEditingController _mobileNoController = TextEditingController();
  TextEditingController _newmobileNoController = TextEditingController();
  TextEditingController _retypemobileNoController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 226, 234, 240),
      padding: EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Change Mobile No.',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mobile No.',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40.0,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _mobileNoController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                      filled: true,
                      fillColor: Color.fromARGB(255, 242, 245, 245),
                      border: OutlineInputBorder(),
                      hintText: '01700525823',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'New Mobile No.',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40.0,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: _newmobileNoController,
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                  filled: true,
                  fillColor: Color.fromARGB(255, 242, 245, 245),
                  border: OutlineInputBorder(),
                  hintText: '',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Re-type Mobile No.',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40.0,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: _retypemobileNoController,
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                  filled: true,
                  fillColor: Color.fromARGB(255, 242, 245, 245),
                  border: OutlineInputBorder(),
                  hintText: '',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Password',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40.0,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                  filled: true,
                  fillColor: Color.fromARGB(255, 242, 245, 245),
                  border: OutlineInputBorder(),
                  hintText: '',
                ),
              ),
            ),
            SizedBox(height: 15.0),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 30.0,
                width: MediaQuery.of(context).size.width / 6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Color.fromARGB(255, 6, 103, 182)),
                child: const Center(
                    child: Text(
                  'Update',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
