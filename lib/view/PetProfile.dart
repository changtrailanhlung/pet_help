import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/components/app_bar.dart';
import 'package:pet_help/components/chat.dart';
import 'package:pet_help/components/item_image.dart';
import 'package:pet_help/view/Contact.dart';
import 'package:pet_help/view/PetHealthReportList.dart';
import 'package:pet_help/view/RescuePetManagement.dart';

class PetProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ItemInfo itemInfo = new ItemInfo();
    return itemInfo;
  }
}

class ItemInfo extends State<PetProfile> {
  String imgUrl = "src/image/download.jpg";

  @override
  void initState() {
    super.initState();
    imgUrl = 'src/image/download.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => RescuePetManagement(),
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
                                            imgUrl = "src/image/download.jpg";
                                          });
                                        },
                                        child: Image.asset(
                                          'src/image/download.jpg',
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 0, 8, 0),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              imgUrl = "src/image/download (1).jpg";
                                            });
                                          },
                                          child: Image.asset(
                                            'src/image/download (1).jpg',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 8, 0),
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              imgUrl = "src/image/download.jpg";
                                            });
                                          },
                                          child: Image.asset(
                                            'src/image/download.jpg',
                                          ),
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
                          // width: 400,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Text(" Loại ",
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                                  Text("Chó",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(" Cân nặng ",
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                                  Text("4Kg",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(" Màu ",
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                                  Text("Cam",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(" Tuổi ",
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                                  Text("1",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(" Giới tính ",
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                                  Text("Đực",
                                      style: TextStyle(color: Colors.orange)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(" Thuộc giống ",
                                      style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.blueAccent)),
                                  Text("Lông xù",
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
                      child: Row(
                        children: <Widget>[
                          Text(
                              "Cập nhật lần cuối: ",
                              style:
                                  TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17, ),
                            ),
                          Text(
                              "20/05/2020",
                            style:
                            TextStyle(color: Colors.grey, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic, fontSize: 15,),
                          ),
                          ],
                      ),
                        ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Người nhận nuôi: ",
                            style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold, fontSize: 17, ),
                          ),
                          Text(
                            "Nguyên ",
                            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w300, fontSize: 15, fontStyle: FontStyle.italic, ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 38,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          height: 43,
                          width: 150,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.lightBlueAccent,
                          ),
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                      new MaterialPageRoute(
                                          builder: (context) =>
                                              ChatScreen(name: 'Nguyen',UrlImage: 'image/cat4.jpg',)));
                                },
                                child: Align(
                                  child: Text("Liên hệ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ),
                              )
                            ],
                          ),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(new MaterialPageRoute(
                                  builder: (context) => ViewPetReportList()));
                            },
                            child: Container(
                              height: 43,
                              width: 160,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.orange,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    child: Text("Xem báo cáo",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold)),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
