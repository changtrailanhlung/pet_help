import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropDownScreen extends StatefulWidget {
  @override
  _DropDownScreenState createState() => _DropDownScreenState();
}

class Item {
  const Item(this.name);
  final String name;

}

class _DropDownScreenState extends State<DropDownScreen> {
  Item selectedType;
  List<Item> types = <Item>[
    const Item('All'),
    const Item('Đã được nhận nuôi'),
    const Item('Đang tim người nuôi'),
    const Item('Chưa được nhận nuôi'),

  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child:  DropdownButton<Item>(
        hint:  Text("All",style: TextStyle(color: Color.fromRGBO(253, 158, 121, 1)),),
    value: selectedType,
    onChanged: (Item Value) {
    setState(() {
    selectedType = Value;
    });
    },
    items: types.map((Item type) {
    return  DropdownMenuItem<Item>(
    value: type,
    child: Row(
    children: <Widget>[

    SizedBox(width: 20,),
    Text(
    type.name,
    style:  TextStyle(color: Color.fromRGBO(253, 158, 121, 1)),
    ),
    ],
    ),
    );
    }).toList(),
        ),
    );
  }
}
