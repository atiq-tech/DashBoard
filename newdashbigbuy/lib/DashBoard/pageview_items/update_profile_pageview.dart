import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UpdateProfilePageview extends StatefulWidget {
  UpdateProfilePageview({super.key});

  @override
  State<UpdateProfilePageview> createState() => _UpdateProfilePageviewState();
}

class _UpdateProfilePageviewState extends State<UpdateProfilePageview> {
  File? imageFile;

  _getFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      File imageFile = File(pickedFile.path);
    }
    setState(() {
      imageFile = File(pickedFile!.path);
    });
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
                'Update Profile',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18.0,
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
                children: const [
                  Text(
                    'Name',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      filled: true,
                      fillColor: Color.fromARGB(255, 242, 245, 245),
                      border: OutlineInputBorder(),
                      hintText: 'Atiq',
                      hintStyle: TextStyle(
                          color: Color.fromARGB(255, 161, 156, 156),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Mobile',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  filled: true,
                  fillColor: Color.fromARGB(255, 242, 245, 245),
                  border: OutlineInputBorder(),
                  hintText: '01700525823',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 161, 156, 156),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'Address',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12.0,
                    fontWeight: FontWeight.w600),
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  filled: true,
                  fillColor: Color.fromARGB(255, 242, 245, 245),
                  border: OutlineInputBorder(),
                  hintText: 'Tangail',
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 161, 156, 156),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 15.0),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 30.0,
                  width: MediaQuery.of(context).size.width / 6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color.fromARGB(255, 6, 103, 182)),
                  child: Center(
                      child: Text(
                    'Update',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
              SizedBox(height: 15.0),
              Column(
                children: [
                  // Container(
                  //   height: MediaQuery.of(context).size.height / 3,
                  //   width: MediaQuery.of(context).size.width / 1,
                  //   color: Color.fromARGB(255, 95, 78, 250),
                  //   child: Card(
                  //       child: images == null
                  //           ? Image.asset(
                  //               "images/bdlfag.jpg",
                  //               height: 200,
                  //               width: 220,
                  //               fit: BoxFit.fitWidth,
                  //             )
                  //           : Image.file(
                  //               File(images!),
                  //               height: 200,
                  //               width: 200,
                  //               fit: BoxFit.cover,
                  //             )),
                  // ),

                  Center(
                    child: Container(
                      height: 200,
                      width: 200,
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        children: [
                          imageFile == null
                              ? CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      'https://st.depositphotos.com/2218212/2938/i/450/depositphotos_29387653-stock-photo-facebook-profile.jpg'),
                                )
                              : Container(
                                  color: Colors.transparent,
                                  child: ClipOval(
                                    child: Image.file(
                                      imageFile!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                          Positioned(
                              bottom: 0,
                              right: -25,
                              child: RawMaterialButton(
                                onPressed: () {
                                  setState(() {
                                    _getFromGallery();
                                  });
                                },
                                elevation: 2.0,
                                fillColor: Color(0xFFF5F6F9),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.blue,
                                ),
                                padding: EdgeInsets.all(15.0),
                                shape: CircleBorder(),
                              )),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     ElevatedButton(
                  //         onPressed: () {
                  //           _imageSource = ImageSource.camera;
                  //           _getImage();
                  //         },
                  //         child: Text(
                  //           "Camera",
                  //           style: TextStyle(
                  //               color: Color.fromARGB(255, 241, 238, 4),
                  //               fontWeight: FontWeight.w800,
                  //               fontSize: 20),
                  //         )),
                  //     // ElevatedButton(
                  //     //     onPressed: () {
                  //     //       _imageSource = ImageSource.gallery;
                  //     //       _getImage();
                  //     //     },
                  //     //     child: Text(
                  //     //       "Gallery",
                  //     //       style: TextStyle(
                  //     //           color: Color.fromARGB(255, 247, 222, 4),
                  //     //           fontWeight: FontWeight.w800,
                  //     //           fontSize: 20),
                  //     //     )),
                  //   ],
                  // ),
                  InkWell(
                    onTap: () {
                      // _imageSource = ImageSource.camera;
                      // _getImage();
                      setState(() {
                        _getFromGallery();
                      });
                    },
                    child: Container(
                      height: 30.0,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.teal),
                      child: Center(
                          child: Text(
                        'Select image',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500),
                      )),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
