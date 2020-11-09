import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/view/HomePageUser/HomePage.dart';
import 'package:pet_help/view/MapPic.dart';
import 'package:pet_help/view/UserPostDetail.dart';
import 'package:pet_help/view/login_page.dart';

import 'package:pet_help/view/uploadImages.dart';

// ignore: camel_case_types
class ReasonForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    ReasonFormStage rescuePageStage = new ReasonFormStage();
    return rescuePageStage;
  }
}

//https://medium.com/flutterpub/create-beautiful-forms-with-flutter-47075cfe712

class ReasonFormStage extends State<ReasonForm> {
  // String dropdownValue = 'Phương tiện di chuyển gặp sự cố';
  bool viewVisible = true ;

  // void showWidget(){
  //   setState(() {
  //     viewVisible = true ;
  //   });
  // }
  //
  // void hideWidget(){
  //   setState(() {
  //     viewVisible = false ;
  //   });
  // }

  bool visibilityTag = false;
  bool visibilityObs = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "tag"){
        visibilityTag = visibility;
      }
      if (field == "obs"){
        visibilityObs = visibility;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    int _value = 1;



    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => MapPic(),
              ));
            }),
        title: Container(

          child:

          Text(
            'Nêu Lý Do',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),

      body: SingleChildScrollView(

        child: Column(

          children: <Widget>[

            SizedBox(height: 20,),
            Container(

            ),
            Row(
              children: [
                Text(
                  "    Lý do từ chối: ",
                  style: TextStyle(
                      fontSize: 17, color: Colors.black54 ),
                ),
                DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text(""),
                        value: 1,
                      ),
                      DropdownMenuItem(

                        child: Text("Phương tiện giao thông gặp sự cố"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                          child: Text("Không tìm thấy đối tượng"), value: 3),
                      DropdownMenuItem(
                          child: Text("Gặp các vấn đề giao thông khác"), value: 4),
                      DropdownMenuItem(
                          value: 5,
                          child: GestureDetector(
                            onTap: (){
                              visibilityTag ? null : _changed(true, "tag");
                            },
                            child: Text("Khác"),
                          ),),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),
        // DropdownButton<String>(
        //   value: dropdownValue,
        //   icon: Icon(Icons.arrow_drop_down),
        //   iconSize: 24,
        //   elevation: 16,
        //   style: TextStyle(color: Colors.black, fontSize: 20),
        //   underline: Container(
        //     height: 2,
        //     color: Color.fromRGBO(253, 158, 121, 1),
        //   ),
        //   onChanged: (String newValue) {
        //     setState(() {
        //       dropdownValue = newValue;
        //     });
        //   },
        //   items: <String>['Phương tiện di chuyển gặp sự cố', 'Không tìm thấy đối tượng', 'Gặp các vấn đề về giao thông', 'Khác']
        //       .map<DropdownMenuItem<String>>((String value) {
        //     return DropdownMenuItem<String>(
        //       value: value,
        //       child: Text(value),
        //     );
        //   }).toList(),
        // ),
              ],
            ),
            Container(
              margin: new EdgeInsets.all(16),
              child: new Column(
                children: <Widget>[

                  visibilityTag ? new Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Expanded(
                        flex: 5,
                        child: new TextField(
                          maxLines: 1,
                          style: Theme.of(context).textTheme.title,
                          decoration: new InputDecoration(

                            labelText: "Lý do khác",
                            labelStyle: TextStyle(color: Colors.black38),
                            isDense: true,
                          ),
                        ),
                      ),
                      new Expanded(
                        flex: 1,
                        child: new IconButton(
                          color: Colors.grey[400],
                          icon: const Icon(Icons.cancel, size: 22.0,),
                          onPressed: () {
                            _changed(false, "tag");
                          },
                        ),
                      ),
                    ],
                  ) : new Container(),
                ],
              ),
            ),
            // new Column(
            //
            //   children: <Widget>[
            //     Stack(
            //       children: <Widget>[
            //         new ListTile(
            //           title: new TextField(
            //             decoration: new InputDecoration(
            //               hintText: "Lý do khác", hintStyle: TextStyle(fontWeight: FontWeight.w300),
            //
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //     SizedBox(height: 10,),
            //     const Divider(
            //       height: 1.0,
            //     ),
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: RaisedButton(
                  // color: Color.fromRGBO(253, 158, 121, 1),
                  color: Color.fromRGBO(253, 158, 121, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => UserPostDetail(),
                    ));
                  },
                  child: Text("Xác nhận",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}


