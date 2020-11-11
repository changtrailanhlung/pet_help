import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pet_help/components/BottomNaviBar.dart';
import 'package:pet_help/components/ListHeader/list_header.dart';
import 'package:pet_help/components/ListHeader/list_header_dog.dart';
import 'package:pet_help/components/ListView/listViewDog.dart';
import 'package:pet_help/view/Login.dart';
import 'package:pet_help/view/UserPetManagement.dart';
import 'package:pet_help/view/UserPostManagement.dart';
import 'package:pet_help/view/proflie.dart';


import 'package:pet_help/view/ContactUser.dart';

class MyHomeDogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bottomNaviBar = BottomNaviBar;
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
              height: 200,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 75,
                      height: 75,
                      child: Image.asset('src/icon/cat.png'),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Text(
                      'Tom\n'
                          'tom.user@gmail.com',
                      style: GoogleFonts.lato(
                          fontStyle: FontStyle.normal,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Thông tin của tôi'),
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
                  builder: (context) => UserPetManagement(),
                ));
              },
            ),
            ListTile(
              title: Text('Bài Post của tôi'),
              leading: new Tab(
                icon: new Image.asset("src/icon/post.png"),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => UserPostManagement(),
                ));
              },
            ),
            ListTile(
              title: Text('Liên lạc'),
              leading: new Tab(
                icon: new Image.asset("src/icon/contact.png"),
              ),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => ContactViewUser(),
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
            HeaderListDog(),
            Expanded(child: ListViewDog()),
            BottomNaviBar()
          ],
        ),
      ),
    );
  }
}
