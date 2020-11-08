import 'package:flutter/material.dart';
import 'package:pet_help/view/AdoptRequest.dart';
import 'package:pet_help/view/PetHealthReportDetail.dart';
import 'package:pet_help/view/PostDetail.dart';
import 'package:pet_help/view/RescueHome.dart';

class AdoptRequestList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
              'Yêu cầu nhận nuôi',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          backgroundColor: Color.fromRGBO(253, 158, 121, 1),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                // Text(
                //   "Báo cáo sức khỏe của Bum",
                //   style: TextStyle(fontSize: 30),
                // ),
                SizedBox(height: 10),
                new GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new AdoptRequest()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    child: Row(children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              'src/image/download.jpg',
                              width: 90,
                              height: 90,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                            child: Row(
                              children: [
                                Icon(Icons.pets),
                                Text(
                                  " Tên pet: ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Lậu",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(253, 158, 121, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Row(
                              children: [
                                Icon(Icons.person),
                                Text(
                                  " Người nhận nuôi: ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Nguyễn Văn Du",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(253, 158, 121, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Row(
                              children: [
                                Icon(Icons.date_range),
                                Text(
                                  " Ngày: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "26/9/2020",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(253, 158, 121, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                            child: Row(
                              children: [
                                Icon(Icons.home),
                                Text(
                                  " Địa chỉ: ",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  " 658 Lê Văn Luyện, Q9",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(253, 158, 121, 1),
                                  ),
                                )
                              ],
                            ),
                          ),
                          // Padding(
                          //   padding: const EdgeInsets.fromLTRB(8, 0, 3, 4),
                          //   child: Container(
                          //     width: 220,
                          //     child: Text(
                          //       "Địa chỉ: 658 Lê Văn Luyện, Q9, tp.HCM",
                          //       style: TextStyle(
                          //         fontSize: 15,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ]),
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.black54,
                              offset: new Offset(1.0, 2.0),
                              blurRadius: 3.5),
                        ]),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'src/image/avt.jpg',
                            width: 90,
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                          child: Row(
                            children: [
                              Icon(Icons.pets),
                              Text(
                                "Tên pet: ",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Bụt",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                          child: Row(
                            children: [
                              Icon(Icons.person),
                              Text(
                                "Người nhận nuôi: ",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Tan1",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                          child: Row(
                            children: [
                              Icon(Icons.date_range),
                              Text(
                                "Ngày: ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "26/9/2020",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                          child: Row(
                            children: [
                              Icon(Icons.home),
                              Text(
                                " Địa chỉ: ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                " 658 Lê Văn Luyện, Q9",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(8, 0, 3, 4),
                        //   child: Container(
                        //     width: 220,
                        //     child: Text(
                        //       "a a a a a a a a a a a a a a a a a a a ",
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ]),
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.black54,
                            offset: new Offset(1.0, 2.0),
                            blurRadius: 3.5),
                      ]),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  child: Row(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Image.asset(
                            'src/image/cat6.jpg',
                            width: 90,
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
                          child: Row(
                            children: [
                              Icon(Icons.pets),
                              Text(
                                "Tên pet: ",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Ngáo",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                          child: Row(
                            children: [
                              Icon(Icons.person),
                              Text(
                                "Người nhận nuôi: ",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Nguyen",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                          child: Row(
                            children: [
                              Icon(Icons.date_range),
                              Text(
                                "Ngày: ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "26/9/2020",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                          child: Row(
                            children: [
                              Icon(Icons.home),
                              Text(
                                " Địa chỉ: ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                " 658 Lê Văn Luyện, Q9",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.fromLTRB(8, 0, 3, 4),
                        //   child: Container(
                        //     width: 220,
                        //     child: Text(
                        //       "a a a a a a a a a a a a a a a a a a a ",
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         fontWeight: FontWeight.bold,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ]),
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        new BoxShadow(
                            color: Colors.black54,
                            offset: new Offset(1.0, 2.0),
                            blurRadius: 3.5),
                      ]),
                ),
              ],
            ),
          ),
        ));
  }
}
