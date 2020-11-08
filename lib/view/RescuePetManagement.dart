import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/components/BottomNaviBar.dart';
import 'file:///E:/Github/HCI201/Pet-Help/lib/components/ListHeader/list_header.dart';
import 'package:pet_help/components/rescue_home_list.dart';
import 'package:pet_help/components/rescue_pet_list.dart';
import 'package:pet_help/view/RescueHome.dart';

class RescuePetManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => RescueHome(),
              ));
            }),
        title: Container(
          child: Text(
            'Thú cưng',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            HeaderList(),
            Expanded(child: RescuePetList()),
          ],
        ),
      ),
    );
  }
}
