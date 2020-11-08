import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/view/AdoptForm.dart';
import 'package:pet_help/view/HomePageUser/HomePage.dart';
import 'package:pet_help/view/ProfileList/SARProfile.dart';

import '../components/app_bar.dart';
import '../components/item_image.dart';

class PostDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ItemInfo info = new ItemInfo();
    return info;
  }
}

class ItemInfo extends State<PostDetail> {
  String imgUrl = "src/image/nga.jpg";

  @override
  void initState() {
    super.initState();
    imgUrl = 'src/image/nga.jpg';
  }

  @override
  Widget build(BuildContext context) {
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
            'Nhận nuôi',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Itemimage(
                          imgSrc: imgUrl,
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                              child: Container(
                                height: 100,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            imgUrl = "src/image/nga.jpg";
                                          });
                                        },
                                        child: Image.asset(
                                          'src/image/nga.jpg',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 0, 8, 0),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              imgUrl = "src/image/cat2.jpg";
                                            });
                                          },
                                          child: Image.asset(
                                            'src/image/cat2.jpg',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 8, 0),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              imgUrl = "src/image/cat3.jpg";
                                            });
                                          },
                                          child: Image.asset(
                                            'src/image/cat3.jpg',
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            imgUrl = "src/image/cat4.jpg";
                                          });
                                        },
                                        child: Image.asset(
                                          'src/image/cat4.jpg',
                                        ),
                                      ),
                                    ]),
                              ),
                            ))
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        //   children: <Widget>[

                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 70,
                          width: 350,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text("Loại",
                                      style:
                                      TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold,)),
                                  Text("Mèo",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Tuổi",
                                      style:
                                          TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold,)),
                                  Text("1 Tuổi",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Giới tính",
                                      style:
                                          TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold,)),
                                  Text("Đực",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Thuộc giống",
                                      style:
                                          TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold,)),
                                  Text("Nga",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text("Cân nặng",
                                      style:
                                      TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold,)),
                                  Text("4Kg",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 5,
                    ),
                    Divider(
                      color: Colors.black87,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          width: 110,
                          alignment: Alignment(0.1, 1.0),
                          child: Text(
                            "BUM",
                            style: TextStyle(
                                color: Colors.brown,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SARProfileApp()));
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Từ: ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "Trung tâm SAR",
                              style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 20),

                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 30,
                          width: 140,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border(
                                top: BorderSide(width: 1.0, color: Colors.blue),
                                left:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                right:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.blue),
                              )),
                          child: Column(
                            children: [
                              Align(
                                child: Text("Đã tiêm phòng",
                                    style: TextStyle(color: Colors.blueAccent)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 110,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border(
                                top: BorderSide(width: 1.0, color: Colors.blue),
                                left:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                right:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.blue),
                              )),
                          child: Column(
                            children: [
                              Align(
                                child: Text("Đã tiệt giun",
                                    style: TextStyle(color: Colors.blueAccent)),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 110,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border(
                                top: BorderSide(width: 1.0, color: Colors.blue),
                                left:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                right:
                                    BorderSide(width: 1.0, color: Colors.blue),
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.blue),
                              )),
                          child: Column(
                            children: [
                              Align(
                                child: Text("Đã được thiến",
                                    style: TextStyle(color: Colors.blueAccent)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          // padding: EdgeInsets.all(14.0),
                          padding: const EdgeInsets.fromLTRB(50, 20, 0, 10),
                          // height: 80,
                          width: 350,
                          alignment: Alignment.center,
                          child: Text(
                            "Bum là một con mèo Nga. Nó được biết đến với tính cách trầm lặng và ngọt ngào. Mặc dù Bum có xu hướng thư giãn và dễ tính, Bum cũng có khí chất của hoàng tộc.",
                            // textAlign: TextAlign.left,
                            // overflow: TextOverflow.ellipsis,
                            // maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => AdoptForm()));
                      },
                      child: Container(
                        alignment: Alignment(1.0, 1.0),
                        padding: EdgeInsets.all(9),
                        height: 40,
                        width: 220,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(253, 158, 121, 1),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            Text(
                              "Nhận nuôi",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Row ShopName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Colors.grey,
        ),
        SizedBox(
          width: 10,
        ),
        Text(name)
      ],
    );
  }
}
