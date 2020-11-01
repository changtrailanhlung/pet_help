import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      body:

    Container(
    decoration: BoxDecoration(
    image: DecorationImage(
    image: AssetImage('src/image/MapGG.jpg'), fit: BoxFit.fitWidth),
    // gradient: LinearGradient(
    //     colors: [Colors.blue[400], Colors.blue],
    //     begin: Alignment.bottomCenter,
    //     end: Alignment.topCenter),
    ),
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          height: 145.0,
          width: 200.0,

          child: FittedBox(

            child: FloatingActionButton.extended(
              backgroundColor: Color.fromRGBO(253, 158, 121, 1),
                label: Text('Chấp nhận cứu trợ', style: TextStyle(fontSize: 20,)),
                icon: Icon(Icons.done),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AddPetAfterRes()));
                }
                ),
          ),
        ),
    );
  }
}
