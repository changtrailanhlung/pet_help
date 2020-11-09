import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/view/HomePageUser/HomePage.dart';
import 'package:pet_help/view/HomePageUser/HomePageCat.dart';
import 'package:pet_help/view/HomePageUser/HomePageDog.dart';

class RescueHeaderList extends StatefulWidget {
  @override
  _RescueHeaderListState createState() => _RescueHeaderListState();
}

class _RescueHeaderListState extends State<RescueHeaderList> {
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

          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
