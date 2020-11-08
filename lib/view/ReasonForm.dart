import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/view/MapPic.dart';
import 'package:pet_help/view/UserPostDetail.dart';
import 'package:pet_help/view/login_page.dart';

import 'package:pet_help/view/uploadImages.dart';

// ignore: camel_case_types
class ReasonForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    AddPetStage rescuePageStage = new AddPetStage();
    return rescuePageStage;
  }
}

//https://medium.com/flutterpub/create-beautiful-forms-with-flutter-47075cfe712

class AddPetStage extends State<ReasonForm> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    int _value = 1;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MapPic(),
              ));
            }),
        title: Container(
          child: Text(
            'Nêu Lý Do',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20,),
            Container(

            ),
            Row(
              children: [
                Text(
                  "    Lý do từ chối: ",
                  style: TextStyle(
                      fontSize: 17, color: Colors.black54 ),
                ),
                DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text(""),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Phương tiện giao thông gặp sự cố"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                          child: Text("Không tìm thấy đối tượng"), value: 3),
                      DropdownMenuItem(
                          child: Text("Gặp các vấn đề giao thông khác"), value: 4),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),

              ],
            ),

            new Column(
              children: <Widget>[
                new ListTile(
                  title: new TextField(
                    decoration: new InputDecoration(
                      hintText: "Lý do khác", hintStyle: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ),
                ),





                SizedBox(height: 10,),
                const Divider(
                  height: 1.0,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: RaisedButton(
                  // color: Color.fromRGBO(253, 158, 121, 1),
                  color: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => UserPostDetail(),
                    ));
                  },
                  child: Text("Xác nhận",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
