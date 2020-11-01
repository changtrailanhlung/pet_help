import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/list_header.dart';
import 'package:pet_help/components/rescue_home_list.dart';
import 'package:pet_help/components/rescue_pet_list.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/PetProfile.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:pet_help/view/UserPetProfile.dart';

class UserPetManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
            'Thú cưng',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Text(
            //   "Báo cáo sức khỏe của Bum",
            //   style: TextStyle(fontSize: 30),
            // ),
            SizedBox(height: 10),
            SizedBox(
              height: 20,
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new UserPetProfile()),
                );
              },
              child: Container(
                width: double.infinity,
                child: Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'src/image/pet_4.jpg',
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
                        padding: const EdgeInsets.fromLTRB(8, 23, 8, 8),
                        child: Container(
                          width: 220,
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  Text(
                                    "BUM",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 15, 0, 8),
                        child: Row(
                          children: [
                            Text(
                              "Cập nhật lần cuối: ",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "15/02/2015",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Từ: ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              // width: 170,
                              child: Text(
                                "Bệnh viện Pet PRO",
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
                height: 200,
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
                  new MaterialPageRoute(builder: (context) => new UserPetProfile()),
                );
              },
              child: Container(
                width: double.infinity,
                child: Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'src/image/pet_5.jpg',
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
                        padding: const EdgeInsets.fromLTRB(8, 23, 8, 8),
                        child: Container(
                          width: 220,
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  Text(
                                    "Cái",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 15, 0, 8),
                        child: Row(
                          children: [
                            Text(
                              "Cập nhật lần cuối: ",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "20/08/2019",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 18, 3, 4),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Từ: ",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              // width: 170,
                              child: Text(
                                "Bệnh viện New Pet Hospital",
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]),
                height: 200,
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
    );
  }
}
