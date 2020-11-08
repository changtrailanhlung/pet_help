import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pet_help/view/HomePageUser/HomePage.dart';
import 'package:pet_help/view/PostDetail.dart';
import 'package:pet_help/view/loadimg.dart';
import 'loadimg.dart';
import 'package:address_picker/address_picker.dart';

class AdoptForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    AdoptFormStage adoptFormStage = new AdoptFormStage();
    return adoptFormStage;
  }
}

class AdoptFormStage extends State<AdoptForm> {
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
              'Đơn xin nhận nuôi',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          backgroundColor: Color.fromRGBO(253, 158, 121, 1),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(color: Colors.teal)
                    ),
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.orange,
                    ),
                    labelText: 'Họ và tên',
                    // labelStyle: new TextStyle(color: Colors.red, fontSize: 16.0),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(color: Colors.teal)
                    ),
                    prefixIcon: const Icon(
                      Icons.call,
                      color: Colors.orange,
                    ),
                    labelText: 'Số điện thoại',
                    // labelStyle: new TextStyle(color: Colors.red, fontSize: 16.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(color: Colors.teal)
                    ),
                    prefixIcon: const Icon(
                      Icons.home,
                      color: Colors.orange,
                    ),
                    labelText: 'Số nhà, đường',
                    // labelStyle: new TextStyle(color: Colors.red, fontSize: 16.0),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: AddressPicker(
                  onAddressChanged: (address) {
                    print(address);
                  },
                  buildItem: (text) {
                    return Text(text, style: TextStyle(color: Colors.blue));
                  },
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Môi trường sống hiện tại",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "(*)  ",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Nhà riêng"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Chung cư"),
                          value: 2,
                        ),
                        DropdownMenuItem(child: Text("Trọ"), value: 3),
                        DropdownMenuItem(child: Text("Ký túc xá"), value: 4),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      "Giới tính",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  DropdownButton(
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text("Nam"),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Nữ"),
                          value: 2,
                        ),
                        DropdownMenuItem(child: Text("Other"), value: 3),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ],
              ),
              Container(
                child: RichText(
                  text: TextSpan(
                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Ảnh CMND mặt trước và mặt sau ',
                          style: TextStyle(fontSize: 16, color: Colors.grey)),
                      TextSpan(
                          text: '(*)',
                          style: TextStyle(
                              fontSize: 17,
                              // fontWeight: FontWeight.bold,
                              color: Colors.red)),
                    ],
                  ),
                ),
              ),
              Container(
                child: ImgLoad(),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(50.0),
                        // borderSide: BorderSide(color: Colors.teal)
                    ),
                    prefixIcon: const Icon(
                      Icons.border_color,
                      color: Colors.orange,
                    ),
                    labelText: 'Ghi chú',
                    // labelStyle: new TextStyle(color: Colors.red, fontSize: 16.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  '(*) là mục bắt buộc phải điền',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => PostDetail(),
                      ));
                    },
                    child: Text(
                      'Gửi đơn',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
