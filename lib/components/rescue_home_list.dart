import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/PetProfile.dart';
import 'package:pet_help/view/UserPostDetail.dart';

class RescueHomeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // Text(
            //   "Báo cáo sức khỏe của Bum",
            //   style: TextStyle(fontSize: 30),
            // ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new UserPostDetail()),
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
                          'src/image/cat_mouth1.jpg',
                          width: size.width * 0.45,
                          height: size.height * 0.44,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 19, 8, 0),
                        child: Container(
                          width: size.width * 0.35,
                          child: Container(
                            child: (Text(
                              "Một con mèo bị phỏng ngay miệng",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(253, 158, 121, 1),
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 12, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.account_circle_outlined, ),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Dũng Phạm",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.access_time_rounded,),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "25 phút trước",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.location_on),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 0.33,
                              child: Column(
                                children: [
                                  Text(
                                    "120 Võ Văn Ngân, Q9, TP.HCM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.warning, color: Colors.red,),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Nặng",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          width: size.width * 0.4,
                          child: (Text(
                            "Khoảng cách 4.5 km",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ]),
                height: size.height * 0.33,
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
            SizedBox(height: 10),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new UserPostDetail()),
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
                          'src/image/dog_attack.jpg',
                          width: size.width * 0.45,
                          height: size.height * 0.44,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 19, 8, 0),
                        child: Container(
                          width: size.width * 0.35,
                          child: Container(
                            child: (Text(
                              "Cứu chú chó bị đánh đập",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(253, 158, 121, 1),
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 12, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.account_circle_outlined, ),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Hậu Phạm",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.access_time_rounded,),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "15 phút trước",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.location_on),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 0.33,
                              child: Column(
                                children: [
                                  Text(
                                    "658 Quang Trung, Q12, TP.HCM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.warning, color: Colors.orangeAccent,),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Trung bình",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.orangeAccent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          width: size.width * 0.4,
                          child: (Text(
                            "Khoảng cách 5 km",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ]),
                height: size.height * 0.33,
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
            SizedBox(height: 10),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new UserPostDetail()),
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
                          'src/image/lost_kitty.jpg',
                          width: size.width * 0.45,
                          height: size.height * 0.44,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 19, 8, 0),
                        child: Container(
                          width: size.width * 0.35,
                          child: Container(
                            child: (Text(
                              "Một chú mèo con bị lạc",
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(253, 158, 121, 1),
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 12, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.account_circle_outlined, ),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Luân Phạm",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.access_time_rounded,),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "5 phút trước",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.location_on),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 0.33,
                              child: Column(
                                children: [
                                  Text(
                                    "250 CMT8, Q10, TP.HCM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.warning, color: Colors.green,),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Nhẹ",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          width: size.width * 0.4,
                          child: (Text(
                            "Khoảng cách 9 km",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ]),
                  height: size.height * 0.33,
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
            SizedBox(height: 10),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new UserPostDetail()),
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
                          'src/image/lost_puppyjpg.jpg',
                          width: size.width * 0.45,
                          height: size.height * 0.44,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 19, 8, 0),
                        child: Container(
                          width: size.width * 0.35,
                          child: Container(
                            child: (Text(
                              "Cứu chú chó con bị bỏ rơi",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(253, 158, 121, 1),
                              ),
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 12, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.account_circle_outlined, ),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Nguyên Phạm",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.access_time_rounded,),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "15 ngày trước",
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.location_on),
                                ],
                              ),
                            ),
                            Container(
                              width: size.width * 0.33,
                              child: Column(
                                children: [
                                  Text(
                                    "658 Quang Trung, Q12, TP.HCM",
                                    style: TextStyle(
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 0, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.warning, color: Colors.green,),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    "Nhẹ",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Container(
                          width: size.width * 0.4,
                          child: (Text(
                            "Khoảng cách 20 km",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                ]),
                height: size.height * 0.33  ,
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
            SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}
