import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/BottomNaviBarRescue.dart';
import 'package:pet_help/components/ListHeader/list_header.dart';
import 'package:pet_help/components/ListHeader/rescue_list_header.dart';
// import 'file:///E:/Github/HCI201/Pet-Help/lib/components/ListHeader/list_header.dart';
import 'package:pet_help/components/rescue_home_list.dart';
import 'package:pet_help/rate_my_app/RateMyApp.dart';
import 'package:pet_help/rate_my_app/RateMyAppRescue.dart';
import 'package:pet_help/view/AdoptRequestList.dart';
import 'package:pet_help/view/Contact.dart';
import 'package:pet_help/view/Login.dart';
import 'package:pet_help/view/UserPetManagement.dart';
import 'package:pet_help/view/RescuePostManagement.dart';
import 'package:pet_help/view/RescuePetManagement.dart';
import 'package:pet_help/view/proflie.dart';

class RescueHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 130, 40),
              child: Image.asset(
                'src/icon/logoCute.png',
                height: 110,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              color: Color.fromRGBO(253, 158, 121, 1),
              height:200,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 75,
                      height: 75,
                      child: Image.asset('src/image/avt.jpg'),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Cuu Tro FPT'
                          '\ncuutro@gmail.com',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Trang cá nhân'),
              leading: new Tab(
                icon: new Image.asset("src/icon/profile.png"),
              ),
              onTap: () {
                Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => ProfileApp()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            ListTile(
              title: Text('Thú cưng của tôi'),
              leading: new Tab(
                icon: new Image.asset("src/icon/pet-house.png"),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => RescuePetManagement(),
                ));
              },
            ),
            ListTile(
              title: Text('Bài viết của tôi'),
              leading: new Tab(
                icon: new Image.asset("src/icon/post.png"),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => MyPost(),
                ));
              },
            ),
            ListTile(
              title: Text('Đơn nhận nuôi'),
              leading: new Tab(
                icon: new Image.asset(
                  "src/icon/adopt.png",
                  width: 40,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => AdoptRequestList(),
                ));
              },
            ),
            ListTile(
              title: Text('Liên Lạc'),
              leading: new Tab(
                icon: new Image.asset("src/icon/contact.png"),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => ContactView(),
                ));
              },
            ),
            ListTile(
              title: Text('Đăng xuất'),
              leading: new Tab(
                icon: new Image.asset("src/icon/logout.png"),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
            ),
            // ListTile(
            //   title: Text('Đánh giá ứng dụng'),
            //   leading: new Tab(
            //     icon: new Icon(Icons.star_border, size: 40,color: Colors.black54,)
            //   ),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.of(context).pushReplacement(
            //       MaterialPageRoute(
            //         builder: (context) => RateMyAppRescue(),
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("src/image/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            RescueHeaderList(),
            Expanded(child: RescueHomeList()),
            BottomNaviBarRescue()
          ],
        ),
      ),
    );
  }
}
