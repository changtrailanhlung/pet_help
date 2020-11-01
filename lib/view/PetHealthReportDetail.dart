import 'package:flutter/material.dart';
import 'package:pet_help/components/chat.dart';
import 'package:pet_help/view/PetHealthReportList.dart';

class PetHealthReportDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(

              icon: Icon(Icons.arrow_back_ios, color: Colors.white),

              onPressed: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => ViewPetReportList(),
                ));
              }),
          title: Container(
            child: Text(
              'Báo cáo',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          backgroundColor: Color.fromRGBO(253, 158, 121, 1),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          new BoxShadow(
                              color: Colors.black54,
                              offset: new Offset(1.0, 2.0),
                              blurRadius: 3.5),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Image.asset(
                          'src/image/download.jpg',
                          width: 300,
                          height: 300,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(
                                'src/image/download.jpg',
                                width: 100,
                                height: 100,
                              ),
                              Image.asset(
                                'src/image/download (1).jpg',
                                width: 100,
                                height: 100,
                              ),
                              Image.asset(
                                'src/image/download (1).jpg',
                                width: 100,
                                height: 100,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                "14/9/2020",
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
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.pets),
                              Text(
                                "Tình trạng sức khỏe: ",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Ổn định",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Báo cáo chi tiết",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 15),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  new BoxShadow(
                                      color: Colors.black54,
                                      offset: new Offset(1.0, 2.0),
                                      blurRadius: 3.5),
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Text(
                                "Sức khỏe đã hồi phục sau muỗi tiêm vacine tháng trước, ăn uống bình thường, không dấu bị đau hay khó chịu",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 160,
                              height: 60,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 0, 0, 12),
                                child: RaisedButton(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: Color.fromRGBO(
                                              253, 158, 121, 1))),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => ChatScreen(name: 'Tan1',UrlImage: 'image/cat4.jpg',)));

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Nhắn tin',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(253, 158, 121, 1),
                                          fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 160,
                              height: 60,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(12, 0, 0, 12),
                                child: RaisedButton(
                                  color: Color.fromRGBO(253, 158, 121, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushReplacement(MaterialPageRoute(
                                      builder: (context) => ViewPetReportList(),
                                    ));
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'Duyệt',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
