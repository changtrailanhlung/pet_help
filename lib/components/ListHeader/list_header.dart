import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/view/HomePageUser/HomePage.dart';
import 'package:pet_help/view/HomePageUser/HomePageCat.dart';
import 'package:pet_help/view/HomePageUser/HomePageDog.dart';

class HeaderList extends StatefulWidget {
  @override
  _HeaderListState createState() => _HeaderListState();
}

class _HeaderListState extends State<HeaderList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 310,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
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
                    contentPadding: EdgeInsets.all(10),
                    suffixIcon: Icon(Icons.search),
                    hintText: "",
                    focusColor: Colors.green,
                    hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontStyle: FontStyle.italic)),
              ),
            ),

          ),
          // SizedBox(
          //   height: 8,
          // ),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 18,
                  height: 18,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                      ));
                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // color: Colors.green,
                        color: Color.fromRGBO(253, 158, 121, 1),
                        // border: Border.all(
                        //   color: Colors.black,
                        //   width: 1,
                        // ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            child: Text("Tất cả",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 18,
                  height: 18,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => MyHomeCatPage(),
                      ));
                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        // border: Border.all(
                        //   color: Colors.black,
                        //   width: 1,
                        // ),
                      ),
                      child: Column(
                        children: [
                          Align(
                            child: Text("Mèo",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold
                                )
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 18,
                  height: 18,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => MyHomeDogPage(),
                      ));
                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        // border: Border.all(
                        //   color: Colors.black,
                        //   width: 1,
                        // ),
                      ),

                      child: Column(
                        children: [
                          Align(
                            child: Text("Chó",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                )
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 18,
                  height: 18,
                ),
                GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        // border: Border.all(
                        //   color: Colors.black,
                        //   width: 1,
                        // ),
                      ),

                      child: Column(
                        children: [
                          Align(
                            child: Text("Hamster",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                )
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 18,
                  height: 18,
                ),
                GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      height: 47,
                      width: 100,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        // border: Border.all(
                        //   color: Colors.black,
                        //   width: 1,
                        // ),
                      ),

                      child: Column(
                        children: [
                          Align(
                            child: Text("Cú",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                )
                            ),
                          )
                        ],
                      ),
                    )),
                SizedBox(
                  width: 18,
                  height: 18,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
