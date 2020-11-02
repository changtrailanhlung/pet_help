import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/listView.dart';
import 'package:pet_help/components/list_header.dart';
import 'package:pet_help/components/rescue_home_list.dart';
import 'package:pet_help/view/HomePage.dart';
import 'package:pet_help/view/PostDetailRescue.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:pet_help/view/loadimg.dart';
import 'package:pet_help/view/login_page.dart';
import 'package:pet_help/view/proflie.dart';

import 'AddPet.dart';

class MyPost extends StatelessWidget {
  final String title;

  MyPost({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  builder: (context) => RescueHome(),
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
                  SizedBox(height: 20,),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new PostDetailRescue()),
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
                                'src/image/cat3.jpg',
                                width: size.width *0.45,
                                height: size.height* 0.44,
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
                                width: size.width * 0.35,
                                child: Container(

                                  child: (Text(
                                    "BỦN",
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
                              padding: const EdgeInsets.fromLTRB(1, 10, 0, 8),
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
                                     // width: size.width * 0.2,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Cứu Trợ FPT",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                            // color: Color.fromRGBO(253, 158, 121, 1),
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
                                    child:
                                    Column(
                                      children: [
                                        Icon(Icons.location_on),

                                      ],

                                    ),

                                  ),
                                  Container(
                                    width: size.width * 0.33,
                                    child:
                                    Column(
                                      children: [

                                        Text(
                                          "111 Trường Chinh, Phường 12, Tân Bình, TP.HCM",
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
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Row(
                                children: [
                                  Icon(Icons.wb_incandescent_rounded,color: Colors.green,),
                                  Text(
                                    " ĐÃ ĐƯỢC NHẬN NUÔI",
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
                      height: size.height * 0.32,
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
                  SizedBox(height: 20,),
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new PostDetailRescue()),
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
                                'src/image/samoyed.jpg',
                                width: size.width *0.45,
                                height: size.height* 0.44,
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
                                width: size.width * 0.35,
                                child: Container(

                                  child: (Text(
                                    "SAM",
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
                              padding: const EdgeInsets.fromLTRB(1, 10, 0, 0),
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
                                    // width: size.width * 0.2,
                                    child: Column(
                                      children: [
                                        Text(
                                          "Cứu Trợ FPT",
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                            // color: Color.fromRGBO(253, 158, 121, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(1, 10, 0, 0),
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
                                          "3 ngày trước",
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
                              padding: const EdgeInsets.fromLTRB(1, 10, 0, 8),
                              child: Row(
                                children: [
                                  Container(
                                    width: size.width * 0.1,
                                    child:
                                    Column(
                                      children: [
                                        Icon(Icons.location_on),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.33,
                                    child:
                                    Column(
                                      children: [
                                        Text(
                                          "111 Trường Chinh, Phường 12, Tân Bình, TP.HCM",
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
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Row(
                                children: [
                                  Icon(Icons.wb_incandescent_rounded,color: Colors.orangeAccent,),
                                  Text(
                                    " CHƯA ĐƯỢC NHẬN \n NUÔI",
                                    style: TextStyle(
                                      color: Colors.orangeAccent,
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
                      height: size.height * 0.32,
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

                ],
              ),
            ))
            // ,BottomNaviBar()
          ],
        ),
      ),
    );
  }
}
