import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/view/login_page.dart';

import 'package:pet_help/view/uploadImages.dart';

// ignore: camel_case_types
class AddPet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    AddPetStage rescuePageStage = new AddPetStage();
    return rescuePageStage;
  }
}

//https://medium.com/flutterpub/create-beautiful-forms-with-flutter-47075cfe712
class AddPetStage extends State<AddPet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.fromLTRB(45, 0, 0, 0),
          child: Text("Thêm Thú Cưng"),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
      ),

      body: UploadImages(),
    );
  }
}
