import 'package:flutter/material.dart';
import 'package:pet_help/view/Contact.dart';
import 'package:pet_help/view/UserPetProfile.dart';
import 'package:pet_help/Global/Settings.dart ' as Settings;

class ChatUserScreen extends StatelessWidget {
  final String name;
  final String UrlImage;

  // In the constructor, require a Todo.
  ChatUserScreen({Key key, @required this.name, this.UrlImage}) : super(key: key);

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
                builder: (context) => UserPetProfile(),
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
      body: SafeArea(
        child: Container(
          child: Stack(
            fit: StackFit.loose,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Divider(
                    height: 0,
                    color: Colors.black54,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "src/image/chat-background-1.jpg"),
                            fit: BoxFit.cover,
                            colorFilter: Settings.isDarkMode
                                ? ColorFilter.mode(
                                Colors.grey[850], BlendMode.hardLight)
                                : ColorFilter.linearToSrgbGamma()),
                      ),
                    ),
                  ),
                  Divider(height: 0, color: Colors.black26),
                  Container(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextField(
                        maxLines: 20,
                        decoration: InputDecoration(
                          suffixIcon: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                icon: Icon(Icons.keyboard_voice_rounded, color:Color.fromRGBO(253, 158, 121, 1)),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.image , color:Color.fromRGBO(253, 158, 121, 1)),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.attach_file , color:Color.fromRGBO(253, 158, 121, 1)),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.send , color:Color.fromRGBO(253, 158, 121, 1)),
                                onPressed: () {},
                              ),
                            ],
                          ),
                          border: InputBorder.none,
                          hintText: "Nhập tin nhắn",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
