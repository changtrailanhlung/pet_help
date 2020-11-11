import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/view/HomePageUser/HomePage.dart';
import 'package:pet_help/view/PetProfile.dart';

class RescuePetList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    RescuePetListState rescuePetListState = new RescuePetListState();
    return rescuePetListState;
  }
}

class RescuePetListState extends State<RescuePetList> {
  int _value = 1;

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
            Container(
              height: 65,
              width: 210,
              // decoration: BoxDecoration(
              //   border: Border.all(
              //     color: Color.fromRGBO(253, 158, 121, 1),
              //   ),
              //   borderRadius: BorderRadius.circular(25),
              // ),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  value: _value,
                  items: [
                    DropdownMenuItem(
                      child: Text("Tất cả"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Đang được nuôi"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                        child: Text("Đang tìm người nuôi"), value: 3),
                    DropdownMenuItem(
                        child: Text("Đã được nhận nuôi"), value: 4),
                    DropdownMenuItem(
                        child: Text(""), value: 5),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new PetProfile()),
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
                          'src/image/download.jpg',
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
                        padding: const EdgeInsets.fromLTRB(1, 15, 1, 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => PetProfile()));
                          },
                          child: Container(
                            // width: size.width * 0.4,
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      "BUM\n",
                                      style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromRGBO(253, 158, 121, 1)),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
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
                                            "20/05/2020",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Người nhận nuôi: ",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            "Nguyễn Văn Du",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Color.fromRGBO(253, 158, 121, 1),
                                              fontWeight: FontWeight.w700
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                      child: SizedBox(
                                        width: size.width * 0.38,
                                        height: 40,
                                        child: RaisedButton(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                  color: Color.fromRGBO(
                                                      253, 158, 121, 1))),
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                              builder: (context) =>
                                                  PetProfile(),
                                            ));
                                          },
                                          child: Text(
                                            'Đã có người nuôi',
                                            style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
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
                  new MaterialPageRoute(builder: (context) => new PetProfile()),
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
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => PetProfile()));
                          },
                          child: Container(
                            // width: size.width * 0.4,
                            child: Row(
                              children: <Widget>[
                                Column(
                                  children: [
                                    Text(
                                      "NGA\n",
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromRGBO(253, 158, 121, 1),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
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
                                            "15/04/2020",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.grey,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                      child: SizedBox(
                                        width: size.width * 0.38,
                                        height: 40,
                                        child: RaisedButton(
                                          color: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                  color: Color.fromRGBO(
                                                      253, 158, 121, 1))),
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushReplacement(
                                                    MaterialPageRoute(
                                              builder: (context) =>
                                                  PetProfile(),
                                            ));
                                          },
                                          child: Text(
                                            'Đang tìm người nuôi',
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 15,
                                            fontWeight: FontWeight.bold,),
                                          ),
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
                  new MaterialPageRoute(builder: (context) => new PetProfile()),
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
                          'src/image/pet_6.jpg',
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
                          // width: size.width * 0.4,
                          child: Row(
                            children: <Widget>[
                              Column(
                                children: [
                                  Text(
                                    "BÊ\n",
                                    style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(253, 158, 121, 1),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
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
                                          "5/1/2020",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                                    child: SizedBox(
                                      width: size.width * 0.38,
                                      height: 40,
                                      child: RaisedButton(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(18.0),
                                            side: BorderSide(
                                                color: Color.fromRGBO(
                                                    253, 158, 121, 1))),
                                        onPressed: () {
                                          Navigator.of(context).pushReplacement(
                                              MaterialPageRoute(
                                            builder: (context) => MyHomePage(),
                                          ));
                                        },
                                        child: Text(
                                          'Đang được chăm sóc',
                                          style: TextStyle(
                                              color: Colors.red, fontSize: 13, fontWeight: FontWeight.bold,),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
          ],
        ),
      ),
    ));
  }
}

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockSizeHorizontal;
  static double blockSizeVertical;
  static double _safeAreaHorizontal;
  static double _safeAreaVertical;
  static double safeBlockHorizontal;
  static double safeBlockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
  }
}
