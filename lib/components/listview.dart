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

    print(data[1]["title"]);

    return "Success!";
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
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
            margin: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            child: Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.black54,
                            offset: new Offset(1.0, 2.0),
                            blurRadius: 3.5),
                      ]),
                  child: GestureDetector(
                    onTap: () {
                      print('f');
                    },
                    child: Image.network(
                      data[index]['pathImg'],
                      height: 200,
                      width: 150,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width: 170,
                            height: 60,
                            child: Column(
                              children: [
                                Flexible(
                                  child: Text(
                                    data[index]['title']
                                        .toString()
                                        .toUpperCase(),
                                    overflow: TextOverflow.clip,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            height: 20,
                            child: RaisedButton(
                              color: Color.fromRGBO(253, 158, 121, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacement(MaterialPageRoute(
                                  builder: (context) => PostDetail(),
                                ));
                              },
                              child: Text(
                                'Xem'.toUpperCase(),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Row(
                              children: [
                                Icon(Icons.location_on),
                                Text(
                                  data[index]['address'],
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Icon(Icons.person),
                              Text(
                                "Đăng bởi",
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                data[index]['user'],
                                style: TextStyle(
                                    fontSize: 13, fontStyle: FontStyle.italic),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
