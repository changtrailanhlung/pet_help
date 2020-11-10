import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:flutter_number_picker/flutter_number_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pet_help/view/UserPetManagement.dart';
import 'package:pet_help/view/UserPetProfile.dart';
import 'package:pet_help/view/loadimg.dart';
import 'loadimg.dart';

class PetReportForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    PetReportFormStage petReportStage = new PetReportFormStage();
    return petReportStage;
  }
}

class PetReportFormStage extends State<PetReportForm> {
  File _image;

  _imgFromCamera() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.camera, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  _imgFromGallery() async {
    File image = await ImagePicker.pickImage(
        source: ImageSource.gallery, imageQuality: 50);

    setState(() {
      _image = image;
    });
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Bộ sưu tập'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

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
                builder: (context) => UserPetProfile(),
              ));
            }),
        title: Container(
          child: Text(
            'Báo cáo sức khỏe thú cưng',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "BUM",
                        style: TextStyle(
                            color: Colors.brown, fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),

                    Container(
                      child: ImgLoad(),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            "Ngày: ",
                            style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "16/10/2020",
                            style: TextStyle(
                              fontSize: 15,
                              fontStyle: FontStyle.italic,
                              color: Colors.black54,
                            ),
                          ),
                        ],
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
                              "  Tình trạng tổng quát: ",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            DropdownButton(
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(""),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Khỏe mạnh"),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                      child: Text("Ổn định"), value: 3),
                                  DropdownMenuItem(
                                      child: Text("Thất thường"), value: 4),
                                  DropdownMenuItem(child: Text("Yếu"), value: 5)
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _value = value;
                                  });
                                }),
                          ],
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
                              "  Cân nặng: ",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            CustomNumberPicker(
                              initialValue: 1,
                              maxValue: 150,
                              minValue: 0,
                              step: 1,
                              onValue: (value) {
                                print(value.toString());
                              },
                            ),
                            Text(
                              " Kg",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
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
                              "  Giới tính: ",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            DropdownButton(
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(""),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Đực"),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(
                                      child: Text("Cái"), value: 3),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _value = value;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 440,
                        height: 215,
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
                              "  Màu: ",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            MaterialColorPicker(
                                allowShades: false, // default true
                                onMainColorChange: (ColorSwatch color) {
                                  // Handle main color changes
                                },
                                selectedColor: Colors.red),
                          ],
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
                              "  Cảm xúc: ",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            DropdownButton(
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(""),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Vui vẻ"),
                                    value: 2,
                                  ),
                                  DropdownMenuItem(child: Text("Sợ"), value: 3),
                                  DropdownMenuItem(
                                      child: Text("Lãng tránh"), value: 4),
                                  DropdownMenuItem(
                                      child: Text("Thất thường"), value: 5),
                                  DropdownMenuItem(
                                      child: Text("Cảm giác cao"), value: 6),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _value = value;
                                  });
                                }),
                          ],
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
                              builder: (context) => UserPetManagement(),
                            ));
                          },
                          child: Text(
                            'Gửi báo cáo',
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
