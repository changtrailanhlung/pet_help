import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pet_help/view/HomePageUser/HomePage.dart';
import 'package:pet_help/view/MapPic.dart';
import 'package:pet_help/view/PostDetail.dart';
import 'package:pet_help/view/PostDetailRescue.dart';
import 'package:pet_help/view/UserPostDetail.dart';
import 'package:pet_help/view/loadimg.dart';
import 'package:pet_help/view/login_page.dart';

import 'package:pet_help/view/uploadImages.dart';

import 'ProfileList/SARProfile.dart';

// ignore: camel_case_types
class RescueReportForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    RescueReportFormStage reportPageStage = new RescueReportFormStage();
    return reportPageStage;
  }
}

//https://medium.com/flutterpub/create-beautiful-forms-with-flutter-47075cfe712

class RescueReportFormStage extends State<RescueReportForm> {
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



  var value;
  @override
  Widget build(BuildContext context) {
    int _value = 1;
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => SARProfileApp(),
              ));
            }),
        title: Container(

          child:

          Text(
            'Báo Cáo',
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
              child: ImgLoad(),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Text(
                  "    Lý do báo cáo: ",
                  style: TextStyle(
                      fontSize: 17, color: Colors.black54 ),
                ),
                DropdownButton(
                    value: this.value,
                    items: [
                      DropdownMenuItem(
                        child: Text(""),
                        value: '',
                      ),
                      DropdownMenuItem(

                        child: Text("Chăm sóc không tốt"),
                        value: 'Chăm sóc không tốt',
                      ),
                      DropdownMenuItem(
                          child: Text("Nhận Yêu cầu nhưng không cứu"), value: 'Nhận Yêu cầu nhưng không cứu'),
                      DropdownMenuItem(
                          child: Text("Liên lạc không phản hồi"), value: 'Liên lạc không phản hồi'),
                      DropdownMenuItem(
                          child: Text("Điền sai dữ liệu"), value: 'Điền sai dữ liệu'),

                    ],
                    onChanged: (val) {
                      setState(() {
                        this.value = val;
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

                  new TextField(
                    maxLines: 1,
                    style: Theme.of(context).textTheme.title,
                    decoration: new InputDecoration(

                      labelText: "Chi tiết",
                      labelStyle: TextStyle(color: Colors.black38),
                      isDense: true,
                    ),
                  ),
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
                      builder: (context) => SARProfileApp(),
                    ));
                  },
                  child: Text("Gửi báo cáo",
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


