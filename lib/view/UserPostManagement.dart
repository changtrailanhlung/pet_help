import 'package:flutter/material.dart';
import 'package:flutter_material_color_picker/flutter_material_color_picker.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/listView.dart';
import 'package:pet_help/components/list_header.dart';
import 'package:pet_help/components/rescue_home_list.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/MyPostDetail.dart';
import 'package:pet_help/view/MyPostDetail2.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:pet_help/view/loadimg.dart';
import 'package:pet_help/view/login_page.dart';
import 'package:pet_help/view/proflie.dart';

import 'AddPet.dart';
import 'UserPetProfile.dart';

class UserPostManagement extends StatelessWidget {
  final String title;

  UserPostManagement({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Bài Post của tôi',
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ));
              },
            );
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            HeaderList(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    // SizedBox(
                    //   height: 20,
                    // ),
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MyPostDetail2()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        // width: 400,
                        child: Row(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'src/image/rescue_cat3.jpg',
                                  width: 140,
                                  height: 280,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 19, 8, 8),
                                child: Container(
                                  width: 220,
                                  child: Container(
                                    width: 180,
                                    child: (Text(
                                      "MÈO QUÈ",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 23, 0, 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Được đăng bởi ",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Tom",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(253, 158, 121, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),
                                child: Row(
                                  children: [
                                    Icon(Icons.access_time,color: Colors.grey,),
                                    Text(
                                      " 25 phút trước",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    Text(
                                      " 658 Lã Xuân Oai, Q.9, HCM",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),
                                child: Row(
                                  children: [
                                    Icon(Icons.warning_outlined,color: Colors.red,),
                                    Text(
                                      " CHƯA ĐƯỢC CỨU",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]),
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black54,
                                  offset: new Offset(1.0, 2.0),
                                  blurRadius: 3.5),
                            ]),
                      ),
                    ),
                    SizedBox(height: 10),
                    new GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new MyPostDetail()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        // width: 400,
                        child: Row(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'src/image/cat_5.jpg',
                                  width: 140,
                                  height: 240,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 19, 8, 8),
                                child: Container(
                                  width: 220,
                                  child: Container(
                                    width: 180,
                                    child: (Text(
                                      "Mèo bị bỏ rơi...",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 23, 0, 8),
                                child: Row(
                                  children: [
                                    Text(
                                      "Được đăng bởi ",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Tom",
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(253, 158, 121, 1),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),
                                child: Row(
                                  children: [
                                    Icon(Icons.access_time,color: Colors.grey,),
                                    Text(
                                      " 1 ngày trước",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),
                                child: Row(
                                  children: [
                                    Icon(Icons.location_on),
                                    Text(
                                      " 658 Lã Xuân Oai, Q.9, HCM",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),
                                child: Row(
                                  children: [
                                    Icon(Icons.check_box,color: Colors.green,),
                                    Text(
                                      " ĐÃ ĐƯỢC CỨU",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]),
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              new BoxShadow(
                                  color: Colors.black54,
                                  offset: new Offset(1.0, 2.0),
                                  blurRadius: 3.5),
                            ]),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
