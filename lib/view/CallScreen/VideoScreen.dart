import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_help/components/chat.dart';
import 'package:pet_help/view/UserPostDetail.dart';



class VideoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('src/image/camera.jpg'), fit: BoxFit.fitWidth),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 830, 0, 0),
          child: Column(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 38,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[


                      Container(
                        height: size.height * 0.1,
                        width: 90,
                        child: FittedBox(
                          child: FloatingActionButton(
                            onPressed: () {
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => ChatScreen(name: 'Luân', UrlImage: '',)));
                            },
                            child: Icon(Icons.call_end),
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ),


                      // Container(
                      //   height: 47,
                      //   width: 150,
                      //   alignment: Alignment.center,
                      //   padding: EdgeInsets.all(12),
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(8),
                      //     color: Colors.red,
                      //   ),
                      //   child: Column(
                      //     children: [
                      //       GestureDetector(
                      //         onTap: () {
                      //
                      //         },
                      //         child: Align(
                      //           child: Text("Từ chối cứu trợ",
                      //               style: TextStyle(
                      //                   color: Colors.white,
                      //                   fontSize: 16,
                      //                   fontWeight: FontWeight.bold)),
                      //         ),
                      //       )
                      //     ],
                      //   ),
                      // ),

                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
