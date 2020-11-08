import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/components/chat.dart';
import 'package:pet_help/view/ReasonForm.dart';
import 'package:pet_help/view/UserPostDetail.dart';

import 'AddPetAfterRes.dart';

class MapPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => UserPostDetail(),
              ));
            }),
        title: Container(
          child: Text(
            'Map',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('src/image/MapGG.jpg'), fit: BoxFit.fitWidth),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 720, 0, 0),
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 47,
                        width: 150,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red,
                        ),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ReasonForm()));
                              },
                              child: Align(
                                child: Text("Từ chối cứu trợ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ),
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(new MaterialPageRoute(
                                builder: (context) => AddPetAfterRes()));
                          },
                          child: Container(
                            height: 47,
                            width: 200,
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.green,
                            ),
                            child: Column(
                              children: [
                                Align(
                                  child: Text("Chấp nhận cứu trợ",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
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
    );
  }
}
