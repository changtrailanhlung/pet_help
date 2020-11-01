import 'package:flutter/material.dart';
import 'package:pet_help/view/Contact.dart';
import 'package:pet_help/view/UserPetProfile.dart';
import 'package:pet_help/view/UserPostManagement.dart';

class ChatMyPostScreen extends StatelessWidget {
  final String name;
  final String UrlImage;

  // In the constructor, require a Todo.
  ChatMyPostScreen({Key key, @required this.name, this.UrlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false, // tránh overcross
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => UserPostManagement(),
              ));
            }),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(UrlImage),
              radius: 27,
            ),
            SizedBox(width: 15),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${name}",
                  style: Theme.of(context).textTheme.subhead,
                  overflow: TextOverflow.clip,
                ),
                Text(
                  "Online",
                  style: Theme.of(context).textTheme.subtitle.apply(
                        color: Colors.green,
                      ),
                )
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 620),
        child: Container(
          child: Stack(
            children: <Widget>[
              Positioned.fill(
                child: Column(
                  children: <Widget>[
                    // Expanded(
                    //   child: ListView.builder(
                    //     padding: const EdgeInsets.all(15),
                    //     itemCount: messages.length,
                    //     itemBuilder: (ctx, i) {
                    //       if (messages[i]['status'] == MessageType.received) {
                    //         return ReceivedMessagesWidget(i: i);
                    //       } else {
                    //         return SentMessageWidget(i: i);
                    //       }
                    //     },
                    //   ),
                    // ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      height: 61,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(35.0),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 3),
                                      blurRadius: 5,
                                      color: Colors.grey)
                                ],
                              ),
                              child: Row(
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.face), onPressed: () {}),
                                  Expanded(
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "Type Something...",
                                          border: InputBorder.none),
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.photo_camera),
                                    onPressed: () {},
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.attach_file),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            padding: const EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                                color: Colors.green, shape: BoxShape.circle),
                            child: InkWell(
                              child: Icon(
                                Icons.keyboard_voice,
                                color: Colors.white,
                              ),
                              // onLongPress: () {
                              //   setState(() {
                              //     _showBottom = true;
                              //   });
                              // },
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // Positioned.fill(
              //   child: GestureDetector(
              //     onTap: () {
              //       setState(() {
              //         _showBottom = false;
              //       });
              //     },
              //   ),
              // ),
              // _showBottom
              //     ? Positioned(
              //   bottom: 90,
              //   left: 25,
              //   right: 25,
              //   child: Container(
              //     padding: EdgeInsets.all(25.0),
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       boxShadow: [
              //         BoxShadow(
              //             offset: Offset(0, 5),
              //             blurRadius: 15.0,
              //             color: Colors.grey)
              //       ],
              //     ),
              //     child: GridView.count(
              //       mainAxisSpacing: 21.0,
              //       crossAxisSpacing: 21.0,
              //       shrinkWrap: true,
              //       crossAxisCount: 3,
              //       children: List.generate(
              //         icons.length,
              //             (i) {
              //           return Container(
              //             decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(15.0),
              //               color: Colors.grey[200],
              //               border: Border.all(color: Colors.green, width: 2),
              //             ),
              //             child: IconButton(
              //               icon: Icon(
              //                 icons[i],
              //                 color: Colors.green,
              //               ),
              //               onPressed: () {},
              //             ),
              //           );
              //         },
              //       ),
              //     ),
              //   ),
              // )
              //     : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

List<IconData> icons = [
  Icons.image,
  Icons.camera,
  Icons.file_upload,
  Icons.folder,
  Icons.gif
];
