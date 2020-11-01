import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pet_help/components/chat.dart';

class ListMess extends StatefulWidget {
  @override
  _ListMessState createState() => _ListMessState();
}

class _ListMessState extends State<ListMess> {
  List data;

  Future<String> getData() async {
    String response = await rootBundle.loadString('src/data/contact.json');

    this.setState(() {
      data = json.decode(response);
    });

    print(data[1]["title"]);

    return "Success!";
  }

  @override
  void initState() {
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(29, 10, 30, 0),
            child: Container(
              width: 200,
              height: 80,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.black54,
                        offset: new Offset(1.0, 2.0),
                        blurRadius: 3.5),
                  ]),
              child: ListTile(
                leading: Container(
                  width: 55,
                  height: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(.3),
                          offset: Offset(0, 5),
                          blurRadius: 25)
                    ],
                  ),
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(data[index]['imgUrl']),
                          radius: 70,
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 3,
                            ),
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                trailing: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          data[index]['seen']
                              ? Icon(
                                  Icons.check,
                                  size: 15,
                                )
                              : Container(height: 15, width: 15),
                          Text("${data[index]['lastTime']}")
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      data[index]['hasUnseen']
                          ? Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                              ),
                              child: Text(
                                "${data[index]['unseenCount']}",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          : Container(
                              height: 25,
                              width: 25,
                            ),
                    ],
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(1, 0, 0, 24),
                  child: Text(
                    data[index]['name'],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                subtitle: Text(data[index]['text']),
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => ChatScreen(
                      name: data[index]['name'].toString(),
                      UrlImage: data[index]['imgUrl'].toString(),
                    ),
                  ));
                },
              ),
            ),
          );
        });
  }
}
