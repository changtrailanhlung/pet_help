import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/components/uploadImagesRes.dart';
import 'package:pet_help/view/MapPic.dart';
import 'package:pet_help/view/login_page.dart';

import 'package:pet_help/view/uploadImages.dart';

// ignore: camel_case_types
class AddPetAfterRes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    AddPetAfterResStage addResStage = new AddPetAfterResStage();
    return addResStage;
  }
}

//https://medium.com/flutterpub/create-beautiful-forms-with-flutter-47075cfe712
class AddPetAfterResStage extends State<AddPetAfterRes> {
  @override
  Widget build(BuildContext context) {
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
          child: Text(
            'Báo cáo',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),

      body: UploadImagesRes(),
    );
  }
}
