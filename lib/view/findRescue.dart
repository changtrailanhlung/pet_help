import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pet_help/components/location.dart';
import 'package:pet_help/view/HomePageUser/HomePage.dart';
import 'package:pet_help/view/RescueHome.dart';

import 'loadimg.dart';

class Pick extends StatefulWidget {
  @override
  _PickState createState() => _PickState();
}

class _PickState extends State<Pick> {
  double _lowerValue = 50;
  double _upperValue = 180;
  final number = TextEditingController();

  // File _image;
  // _imgFromCamera() async {
  // File image = await ImagePicker.pickImage(
  //     source: ImageSource.camera, imageQuality: 50);

  // setState(() {
  //   _image = image;
  // });
  // }

  // _imgFromGallery() async {
  //   File image = await ImagePicker.pickImage(
  //       source: ImageSource.gallery, imageQuality: 50);

  // setState(() {
  //   _image = image;
  // });
  // }

  // void _showPicker(context) {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (BuildContext bc) {
  //         return SafeArea(
  //           child: Container(
  //             child: new Wrap(
  //               children: <Widget>[
  //                 new ListTile(
  //                     leading: new Icon(Icons.photo_library),
  //                     title: new Text('Bộ sưu tập'),
  //                     onTap: () {
  //                       _imgFromGallery();
  //                       Navigator.of(context).pop();
  //                     }),
  //                 new ListTile(
  //                   leading: new Icon(Icons.photo_camera),
  //                   title: new Text('Camera'),
  //                   onTap: () {
  //                     _imgFromCamera();
  //                     Navigator.of(context).pop();
  //                   },
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }
var typevalue;
var allvalue;
var injurvalue;
  @override
  Widget build(BuildContext context) {
    int _value = 1;
    return Scaffold(
      resizeToAvoidBottomPadding: false, // tránh overcross
      resizeToAvoidBottomInset: true, // bàn phím che textfield
      appBar: AppBar(
        leading: IconButton(

            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MyHomePage(),
              ));
            }),
        title: Container(
          child: Text(
            'Tìm cứu trợ'.toUpperCase(),
            style: TextStyle(
                fontStyle: FontStyle.normal, color: Colors.white, fontSize: 25),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("src/image/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      // decoration: BoxDecoration(),
                      // child: Container(
                      //   alignment: Alignment.center,
                      //   height: 260,
                      //   width: 300,

                      child: ImgLoad(),
                    ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DashboardScreen(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 440,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black54,
                                  offset: new Offset(1.0, 2.0),
                                  blurRadius: 3.5),
                            ]),
                        child: TextFormField(
                          maxLines: 1,
                          decoration: new InputDecoration(
                              labelStyle: TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              // contentPadding: EdgeInsets.all(10),
                              suffixIcon: Icon(Icons.mode_edit, color: Colors.orange,),
                              hintText: "   Thêm vị trí chi tiết",
                              focusColor: Colors.green,
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 440,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black54,
                                    offset: new Offset(1.0, 2.0),
                                    blurRadius: 3.5),
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "   Loại: ",
                                style: TextStyle(
                                  fontSize: 17, ),
                              ),
                              DropdownButton(
                                  value: this.typevalue,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(""),
                                      value: '',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Chó"),
                                      value: 'Chó',
                                    ),
                                    DropdownMenuItem(
                                        child: Text("Mèo"), value: 'Mèo'),
                                    DropdownMenuItem(
                                        child: Text("Hamster"),
                                        value: 'Hamster'),
                                    DropdownMenuItem(
                                        child: Text("Khác"), value: 'Khác')
                                  ],
                                  onChanged: (val) {
                                    setState(() {
                                      this.typevalue = val;
                                    });
                                  }),

                            ],
                          ),
                        )

                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 440,
                          height: 220,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black54,
                                    offset: new Offset(1.0, 2.0),
                                    blurRadius: 3.5),
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "   Màu: ",
                                style: TextStyle(
                                  fontSize: 17, ),
                              ),
                              MaterialColorPicker(
                                  allowShades: false, // default true
                                  onMainColorChange: (ColorSwatch color) {
                                    // Handle main color changes
                                  },
                                  selectedColor: Colors.red
                              )
                            ],
                          ),
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 440,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black54,
                                    offset: new Offset(1.0, 2.0),
                                    blurRadius: 3.5),
                              ]),
                          child: Row(
                            children: [
                              Text(
                                "   Tình trạng tổng quát: ",
                                style: TextStyle(
                                  fontSize: 17, ),
                              ),
                              DropdownButton(
                                  value: this.allvalue,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(""),
                                      value: '',
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Vui vẻ"),
                                      value: 'Vui vẻ',
                                    ),
                                    DropdownMenuItem(
                                        child: Text("Dè chừng"), value: 'Dè chừng'),
                                    DropdownMenuItem(
                                        child: Text("Sợ"),
                                        value: 'Sợ'),
                                    DropdownMenuItem(
                                        child: Text("Lảng tránh"), value: 'Lảng tránh'),

                                    DropdownMenuItem(
                                        child: Text("Cảnh giác cao"), value: 'Cảnh giác cao'),
                                  ],
                                  onChanged: (val) {
                                    setState(() {
                                      this.allvalue = val;
                                    });
                                  }),
                            ],
                          ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 440,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black54,
                                  offset: new Offset(1.0, 2.0),
                                  blurRadius: 3.5),
                            ]),
                        child: Row(
                          children: [
                            Text(
                              "   Bị thương: ",
                              style: TextStyle(
                                  fontSize: 17, ),
                            ),
                            DropdownButton(
                                value: this.injurvalue,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(""),
                                    value: '',
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Có"),
                                    value: 'Có',
                                  ),
                                  DropdownMenuItem(
                                      child: Text("Không"), value: 'Không'),
                                ],
                                onChanged: (val) {
                                  setState(() {
                                    this.injurvalue = val;
                                  });
                                }),
                          ],
                        ),
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 440,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black54,
                                  offset: new Offset(1.0, 2.0),
                                  blurRadius: 3.5),
                            ]),
                        child: TextFormField(
                          maxLines: 4,
                          decoration: new InputDecoration(
                            // labelText: 'Tình trạng hiện tại',
                            // labelStyle: TextStyle(
                            //     color: Colors.green,
                            //     fontSize: 25,
                            //     fontWeight: FontWeight.bold),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              // contentPadding: EdgeInsets.all(30),
                              suffixIcon: Icon(Icons.mode_edit, color: Colors.orange,),
                              focusColor: Colors.green,
                              hintText: "   Vị trí bị thương",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 440,
                            height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black54,
                                    offset: new Offset(1.0, 2.0),
                                    blurRadius: 3.5),
                              ]),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Text(
                                      "   Phần trăm bị thương: ",
                                      style: TextStyle(
                                        fontSize: 17, ),
                                    ),
                                  ),
                                ),
                                // Container(
                                //   color: Colors.orange,
                                //   height: 100,
                                //   width: 50,
                                // ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      // width: 10.0,
                                      child: TextField(
                                        controller: number,
                                        autocorrect: true,
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(hintText: '0'),
                                      )
                                  ),
                                ),
                                Expanded(
                                  flex: 0,
                                  child: Container(
                                    width: 50.0,
                                    child: Text("%",
                                      style: TextStyle(
                                        fontSize: 17, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ],
                            )
                        )

                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 440,
                        height: 130,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black54,
                                  offset: new Offset(1.0, 2.0),
                                  blurRadius: 3.5),
                            ]),
                        child: TextFormField(
                          maxLines: 4,
                          decoration: new InputDecoration(
                            // labelText: 'Tình trạng hiện tại',
                            // labelStyle: TextStyle(
                            //     color: Colors.green,
                            //     fontSize: 25,
                            //     fontWeight: FontWeight.bold),
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.all(30),
                              suffixIcon: Icon(Icons.mode_edit, color: Colors.orange,),
                              focusColor: Colors.green,
                              hintText: "Ghi chú",
                              hintStyle: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 200,
                        height: 40,
                        child: RaisedButton(
                          color: Color.fromRGBO(253, 158, 121, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ));
                          },
                          child: Text(
                            'Tìm cứu trợ'.toUpperCase(),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
