import 'package:flutter/material.dart';

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.red, Colors.pinkAccent, Colors.orange]
          ),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://previews.123rf.com/images/mousemd/mousemd1602/mousemd160200121/53122766-colorful-pet-seamless-pattern-on-a-white-background-vector-illustration.jpg"),
                      fit: BoxFit.fill)),
              child: Container(
                width: double.infinity,
                height: 350.0,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          // "https://sohanews.sohacdn.com/160588918557773824/2020/10/5/photo-1-1601889002966448421364.jpg",
                            "https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Tom",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              )),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Text(
              'User@gmail.com',
              style: TextStyle(
                fontSize: 19.0,
                fontStyle: FontStyle.italic,
                // fontWeight: FontWeight.w300,
                color: Colors.redAccent,
                // letterSpacing: 2.0,
              ),
            ),

          ),
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Text(
                  //   "Tú:",
                  //   style: TextStyle(
                  //       color: Colors.redAccent,
                  //       fontStyle: FontStyle.normal,
                  //       fontSize: 28.0),
                  // ),
                  // SizedBox(
                  //   height: 10.0,
                  // ),
                  Text(
                    '            0123456789',
                    style: TextStyle(
                      fontSize: 19.0,
                      // fontStyle: FontStyle.italic,
                      // fontWeight: FontWeight.w300,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      // letterSpacing: 2.0,
                    ),
                  ),
                  // SizedBox(
                  //   height: 10.0,
                  // ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Yêu động vật và anh',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,
            child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                elevation: 0.0,
                padding: EdgeInsets.all(0.0),
                child: Ink(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                        colors: [Colors.redAccent, Colors.pinkAccent]
                    ),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Container(
                    constraints:
                        BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                    alignment: Alignment.center,
                    child: Text(
                      "Contact me",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
