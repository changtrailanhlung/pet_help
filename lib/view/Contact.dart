import 'package:flutter/material.dart';
import 'package:pet_help/components/listMessenger.dart';
import 'package:pet_help/view/RescueHome.dart';

class ContactView extends StatefulWidget {
  @override
  _ContactViewState createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(

            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => RescueHome(),
              ));
            }),
        title: Text('Liên Lạc'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
      ),
      body: Column(
        children: [Expanded(child: ListMess())],
      ),
    );
  }
}
