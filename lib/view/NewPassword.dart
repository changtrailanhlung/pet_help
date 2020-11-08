import 'package:flutter/material.dart';
import 'package:pet_help/customwidget/customtextfield.dart';
import 'package:pet_help/view/ConfirmEmailSent.dart';
import 'package:pet_help/view/Login.dart';

class NewPassword extends StatelessWidget {
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
                    'Đổi mật khẩu',
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

              CustomTextField(
                hint: '    Nhập Mật khẩu mới',
                issecured: true,
              ),
              SizedBox(
                height: 20,
              ),

              CustomTextField(
                hint: '    Nhập lại Mật khẩu',
                issecured: true,
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
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (ctx) => Login()));},
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
