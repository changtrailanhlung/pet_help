import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/components/app_bar.dart';
import 'package:pet_help/components/chat.dart';
import 'package:pet_help/components/chatUser.dart';
import 'package:pet_help/components/item_image.dart';
import 'package:pet_help/view/Contact.dart';
import 'package:pet_help/view/PetHealthReportDetail.dart';
import 'package:pet_help/view/PetReportForm.dart';
import 'package:pet_help/view/RescuePetManagement.dart';
import 'package:pet_help/view/PetHealthReportList.dart';
import 'package:pet_help/view/UserPetManagement.dart';

class UserPetProfile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ItemInfo itemInfo = new ItemInfo();
    return itemInfo;
  }
}

class ItemInfo extends State<UserPetProfile> {
  String imgUrl = "src/image/pet_4.jpg";

  @override
  void initState() {
    super.initState();
    imgUrl = 'src/image/pet_4.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => UserPetManagement(),
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
                                            imgUrl = "src/image/pet_4.jpg";
                                          });
                                        },
                                        child: Image.asset(
                                          'src/image/pet_4.jpg',
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
                                  Text("Mèo",
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
                                  Text("Nga",
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
                    // Row(
                    //   children: [
                    //     Padding(
                    //       padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    //       child: Container(
                    //         height: 15,
                    //         width: 200,
                    //         child: Text(
                    //           "Last reported: 20/5/1999",
                    //           style:
                    //               TextStyle(color: Colors.grey, fontSize: 15),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Last reported: ",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                          Text(
                            " 20/05/1999 - 10:10:07",
                            style: TextStyle(fontStyle: FontStyle.italic, color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Nhận nuôi từ: ",
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                          Text(
                            "Bệnh viện Pet PRO",
                            style: TextStyle(color: Colors.orange),
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
                                  Navigator.of(context)
                                      .push(new MaterialPageRoute(
                                    builder: (context) => ChatUserScreen(
                                      name: "Bệnh viện Pet PRO",
                                      UrlImage: "",
                                    ),
                                  ));
                                },
                                child: Align(
                                  child: Text("Liên hệ trung tâm",
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
                                  builder: (context) => PetReportForm()));
                            },
                            child: Container(
                              height: 43,
                              width: 200,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.orange,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                    child: Text("Báo cáo tình trạng",
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
