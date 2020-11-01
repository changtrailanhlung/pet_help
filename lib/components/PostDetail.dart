import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';
import 'item_image.dart';


class PostDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: detailAppBar(),
      body: Body(

      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Itemimage(imgSrc: "src/image/background.jpg",
        ),
        Expanded(
        child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Container(
                padding: EdgeInsets.all(15),
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("Tuổi", style: TextStyle(color: Colors.blueAccent)),
                        Text("1 ", style: TextStyle(color: Colors.orange)),

                      ],
                    ),
                    Column(
                      children: [
                        Text("Giới tính", style: TextStyle(color: Colors.blueAccent)),
                        Text("Nam",  style: TextStyle(color: Colors.orange)),

                      ],
                    ),
                    Column(
                      children: [
                        Text("Màu sắc", style: TextStyle(color: Colors.blueAccent)),
                        Text("Trắng" , style: TextStyle(color: Colors.orange)),

                      ],
                    ),
                    Column(
                      children: [
                        Text("Giống", style: TextStyle(color: Colors.blueAccent)),
                        Text("Nga" , style: TextStyle(color: Colors.orange)),

                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 30,
                width: 110,

                alignment: Alignment.center,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.blue),
                    left: BorderSide(width: 1.0, color: Colors.blue),
                    right: BorderSide(width: 1.0, color: Colors.blue),
                    bottom: BorderSide(width: 1.0, color: Colors.blue),
                  )
                ),
                child: Column(
                  children: [
                    Align(
                      child: Text("Đã tiêm ngừa", style: TextStyle(color: Colors.blueAccent)),
                    )

                  ],
                ),


              ),
              Container(
                height: 30,
                width: 110,

                alignment: Alignment.center,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.blue),
                      left: BorderSide(width: 1.0, color: Colors.blue),
                      right: BorderSide(width: 1.0, color: Colors.blue),
                      bottom: BorderSide(width: 1.0, color: Colors.blue),
                    )
                ),
                child: Column(
                  children: [
                    Align(
                      child: Text("Đã tẩy giun", style: TextStyle(color: Colors.blueAccent)),
                    )

                  ],
                ),


              ),
              Container(
                height: 30,
                width: 110,

                alignment: Alignment.center,
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border(
                      top: BorderSide(width: 1.0, color: Colors.blue),
                      left: BorderSide(width: 1.0, color: Colors.blue),
                      right: BorderSide(width: 1.0, color: Colors.blue),
                      bottom: BorderSide(width: 1.0, color: Colors.blue),
                    )
                ),
                child: Column(
                  children: [
                    Align(
                      child: Text("Đã thiến", style: TextStyle(color: Colors.blueAccent)),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            height: 5,
          ),
          Divider(
            color: Colors.black87,

          ),
          Row(
            children: <Widget>[
              Container(
                width: 110,
                alignment: Alignment(0.1,1.0),
                child: Text(
                  "Bum",
                  style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(9.0),
                height: 80,
                width: 350,
                alignment: Alignment.center,
                child: Text(
                  "Bum là một con mèo Nga.Bé rất trầm tính và ngọt ngào. Mặc dù đôi khi Bum cũng hay tăng động , nhưng rất có khí chất hoàng gia.",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ),
            ],
          ),
        SizedBox(height: 18,),
          Container(
                alignment: Alignment(0.6,1.0),
                padding: EdgeInsets.all(6),
                height: 30,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(8.0),

                ),
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Muốn nhận nuôi", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),),
              ],
            ),
              ),
            ],

          )
    );
  }

  // ignore: non_constant_identifier_names
  Row ShopName({String name}) {
    return Row(

            children: <Widget>[

              Icon(
                Icons.location_on,
                color: Colors.grey,

              ),
              SizedBox(width: 10,),

              Text(name)
            ],
          );
  }
}



