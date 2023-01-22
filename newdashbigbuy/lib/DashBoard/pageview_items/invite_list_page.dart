import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class InviteListPage extends StatefulWidget {
  const InviteListPage({super.key});

  @override
  State<InviteListPage> createState() => _InviteListPageState();
}

class _InviteListPageState extends State<InviteListPage> {
  TextEditingController _linkController = TextEditingController();
  TextEditingController _invitesmsController = TextEditingController();
  TextEditingController _emailinviteController = TextEditingController();
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
              'invite',
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
                  'invitation Link',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40.0,
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _linkController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                      filled: true,
                      fillColor: Color.fromARGB(255, 242, 245, 245),
                      border: OutlineInputBorder(),
                      hintText: 'https://bigbuy,com.bd',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'invite Via SMS',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40.0,
              child: TextFormField(
                keyboardType: TextInputType.text,
                controller: _invitesmsController,
                obscureText: true,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                  filled: true,
                  fillColor: Color.fromARGB(255, 242, 245, 245),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Mobile Number',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'invite Via EMail',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 40.0,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _emailinviteController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                        filled: true,
                        fillColor: Color.fromARGB(255, 242, 245, 245),
                        border: OutlineInputBorder(),
                        hintText: 'Enter Email',
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 126, 124, 124)),
                    color: Color.fromARGB(255, 242, 245, 245),
                  ),
                  child: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                  ),
                ),)
                ],
              ),
            ),           
          ],
        ),
      ),
    );
  }
}
