import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChangePasswordPageview extends StatefulWidget {
  ChangePasswordPageview({super.key});

  @override
  State<ChangePasswordPageview> createState() => _ChangePasswordPageviewState();
}

class _ChangePasswordPageviewState extends State<ChangePasswordPageview> {
  TextEditingController  _oldPasswordController = TextEditingController();
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _passwordVisible = true;
  bool _newpassVisible = false;
  bool _confpassVisible = true;
  @override
  void initState() {
    _passwordVisible = false;
    _newpassVisible = true;
    _confpassVisible = false;
    super.initState();
  }

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
              'Change Password',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15.0),
            Container(
              height: 1.0,
              width: double.infinity,
              color: Color.fromARGB(255, 121, 118, 118),
            ),
            SizedBox(height: 15.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text(
                  'Old Password',
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
                          controller: _oldPasswordController,
                          obscureText: !_passwordVisible,
                          decoration:const InputDecoration(
                            contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                            filled: true,
                            fillColor: Color.fromARGB(255, 242, 245, 245),
                            border: OutlineInputBorder(),
                            hintText: '',
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 40.0,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 212, 209, 209),
                              border: Border.all(color: Colors.blue, width: 1.0)),
                          child: Center(
                            child: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'New Password',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: SizedBox(
                    height: 40.0,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _newPasswordController,
                      obscureText: !_newpassVisible,
                      decoration:const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                        filled: true,
                        fillColor: Color.fromARGB(255, 242, 245, 245),
                        border: OutlineInputBorder(),
                        hintText: '',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 209, 209),
                        border: Border.all(color: Colors.blue, width: 1.0)),
                    child: IconButton(
                      icon: Icon(
                        _newpassVisible ? Icons.visibility : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        setState(() {
                          _newpassVisible = !_newpassVisible;
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Confirm Password',
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 12.0,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Expanded(
                  flex: 8,
                  child: SizedBox(
                    height: 40.0,
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      controller: _confirmPasswordController,
                      obscureText: !_confpassVisible,
                      decoration:const InputDecoration(
                        contentPadding: EdgeInsets.only(top: 10.0, left: 5.0),
                        filled: true,
                        fillColor: Color.fromARGB(255, 242, 245, 245),
                        border: OutlineInputBorder(),
                        hintText: '',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 212, 209, 209),
                        border: Border.all(color: Colors.blue, width: 1.0)),
                    child: IconButton(
                      icon: Icon(
                        _confpassVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Theme.of(context).primaryColorDark,
                      ),
                      onPressed: () {
                        setState(() {
                          _confpassVisible = !_confpassVisible;
                        });
                      },
                    ),
                  ),
                )
              ],
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
                child:const Center(
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
