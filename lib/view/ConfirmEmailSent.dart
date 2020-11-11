import 'package:flutter/material.dart';
import 'package:pet_help/customwidget/customtextfield.dart';
import 'package:pet_help/view/Login.dart';
import 'package:pet_help/view/NewPassword.dart';

class ConfirmEmailSent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('src/image/background.jpg'), fit: BoxFit.cover),
          // gradient: LinearGradient(
          //     colors: [Colors.blue[400], Colors.blue],
          //     begin: Alignment.bottomCenter,
          //     end: Alignment.topCenter),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 80,),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Xác nhận',
                    style: TextStyle(
                      // color: Colors.blue,
                        color: Color.fromRGBO(253, 158, 121, 1),
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    width: 350,
                    child: Text(
                      'Vui lòng nhập mã OTP đã được gửi tới SĐT của bạn đã đăng kí',
                      style: TextStyle(
                        // color: Colors.blue,
                          color: Colors.black87,

                          fontSize: 20),
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: 20,
              ),

              CustomTextField(
                hint: '    ••••••',
                issecured: false,
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ButtonTheme(
                    buttonColor: Colors.grey,
                    // minWidth: MediaQuery.of(context).size.width,
                    minWidth: 270,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (ctx) => ConfirmEmailSent()));},
                      child: Text(
                        'Gửi lại mã',
                        style: TextStyle(fontSize: 24, color: Colors.black87,),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    )),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: ButtonTheme(
                    buttonColor: Color.fromRGBO(253, 158, 121, 1),
                    // minWidth: MediaQuery.of(context).size.width,
                    minWidth: 270,
                    height: 55,
                    child: RaisedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (ctx) => NewPassword()));},
                      child: Text(
                        'Xác nhận',
                        style: TextStyle(fontSize: 24, color: Colors.white,),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                    )),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
