import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pet_help/components/location.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/RescueHome.dart';

import 'loadimg.dart';
import 'dart:io';

class PickAdopter extends StatefulWidget {
  @override
  _PickAdopterState createState() => _PickAdopterState();
}

class _PickAdopterState extends State<PickAdopter> {
  double _lowerValue = 50;
  double _upperValue = 180;
  final number = TextEditingController();
  @override
  Widget build(BuildContext context) {
    int _value = 1;
    return  Scaffold(
      resizeToAvoidBottomPadding: false, // tránh overcross
      resizeToAvoidBottomInset: true, // bàn phím che textfield
      appBar: AppBar(
        leading: IconButton(

            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => RescueHome(),
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
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 400,
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
                              hintText: "   Điền tên",
                              focusColor: Colors.green,
                              hintStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 400,
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
                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(""),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Chó"),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                        child: Text("Mèo"), value: 3),
                                    DropdownMenuItem(
                                        child: Text("Hamster"),
                                        value: 4),
                                    DropdownMenuItem(
                                        child: Text("Khác"), value: 5)
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  }),

                            ],
                          ),
                        )

                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 400,
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
                          width: 400,
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
                                    DropdownMenuItem(
                                        child: Text("Dè chừng"), value: 3),
                                    DropdownMenuItem(
                                        child: Text("Sợ"),
                                        value: 4),
                                    DropdownMenuItem(
                                        child: Text("Lảng tránh"), value: 5),
                                    DropdownMenuItem(
                                        child: Text("Thất thường"), value: 6),
                                    DropdownMenuItem(
                                        child: Text("Cảnh giác cao"), value: 6),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  }),
                            ],
                          ),
                        )
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 400,
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
                                  value: _value,
                                  items: [
                                    DropdownMenuItem(
                                      child: Text(""),
                                      value: 1,
                                    ),
                                    DropdownMenuItem(
                                      child: Text("Có"),
                                      value: 2,
                                    ),
                                    DropdownMenuItem(
                                        child: Text("Không"), value: 3),
                                  ],
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value;
                                    });
                                  }),
                            ],
                          ),
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: 400,
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
                            width: 400,
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
                        width: 400,
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
