import 'package:flutter/material.dart';
import 'package:pet_help/components/chat.dart';
import 'package:pet_help/view/ReportFormList/ReportForm.dart';

import '../RescueHome.dart';

class LuanDangProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => RescueHome(),
                  ));
                }
            ),


          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          Row(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: IconButton(icon: Icon(Icons.warning),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ReportForm()));
                  },
                ),
              ),
            ],
          )
        ],
      ),
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
                            "https://scontent.fsgn1-1.fna.fbcdn.net/v/t1.0-9/68360040_1370816656398860_4474408856373428224_o.jpg?_nc_cat=111&ccb=2&_nc_sid=09cbfe&_nc_ohc=b8sLfBXIWJYAX9NTIb_&_nc_ht=scontent.fsgn1-1.fna&oh=82e90ae7e2db51f2f2ec7b59434c6a1b&oe=5FCF42D1",
                        ),
                        radius: 50.0,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Luan Dang",
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
              'LuanDang@gmail.com',
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
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ChatScreen(name: 'Luan Dang', UrlImage: '',)));
                    },
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
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
