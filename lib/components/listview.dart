import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'dart:async';
import 'package:flutter/services.dart' show rootBundle;
import 'package:pet_help/view/PostDetail.dart';
import 'dart:convert';

class ListViewPet extends StatefulWidget {
  @override
  _ListViewPetState createState() => _ListViewPetState();
}

class _ListViewPetState extends State<ListViewPet> {
  List data;

  Future<String> getData() async {
    String response = await rootBundle.loadString('src/data/pet.json');

    this.setState(() {
      data = json.decode(response);
    });

    print(data[1]["name"]);

    return "Success!";
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 500,
            height: size.height * 0.25,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  new BoxShadow(
                      color: Colors.black54,
                      offset: new Offset(1.0, 2.0),
                      blurRadius: 3.5),
                ]),
            // margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            margin: EdgeInsets.only(top: 8, left: 5, right: 5, bottom: 8),
            child:GestureDetector(
              onTap: () {
                // print('f');
                Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new PostDetail()),
                );
              },
              child: Container(
                // width: double.infinity,
                width: 200,
                child: Row(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                      Image.network(
                                data[index]['pathImg'],
                                 height: size.height * 0.20,
                                width: 150,
                                fit: BoxFit.fitHeight,
                              ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 14, 8, 0),
                        child: Container(
                          width: size.width * 0.35,
                          child: Container(
                            child: (Text(
                              data[index]['name'].toString().toUpperCase(),
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(253, 158, 121, 1),
                              ),
                              textAlign: TextAlign.center,
                            )),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 20, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.person),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                Text(
                                  data[index]['user'],
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                  ),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(1, 4, 0, 8),
                        child: Row(
                          children: [
                            Container(
                              width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Icon(Icons.pets),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                  Text(
                                    data[index]['title'],
                                    style: TextStyle(
                                      fontSize: 17,
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
                        padding: const EdgeInsets.fromLTRB(1, 4, 0, 8),
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
                              // width: size.width * 0.33,
                              child: Column(
                                children: [
                                  Text(
                                    data[index]['address'],
                                    style: TextStyle(
                                      fontSize: 17,
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
                        padding: const EdgeInsets.fromLTRB(18, 4, 0, 0),
                        child: Row(
                          children: [
                            Container(
                              // width: size.width * 0.1,
                              child: Column(
                                children: [
                                  Text("Khoảng cách ",
                                    style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // width: size.width * 0.3,
                              child: Column(
                                children: [
                                Text(
                                  data[index]['distance'],
                                  style:  TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w300,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                ],
                              ),
                            ),
                          ],
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
          );
        });
  }
}
