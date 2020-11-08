import 'package:flutter/material.dart';
import 'package:pet_help/view/UserPetManagement.dart';
import 'package:pet_help/view/UserPostManagement.dart';
import 'package:pet_help/view/findRescue.dart';

class BottomNaviBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.white,
            elevation: 5,
            child: Icon(
              Icons.add,
              color: Colors.red,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => Pick(),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Color.fromRGBO(253, 158, 121, 1),
          notchMargin: 7.0,
          child: Container(
            decoration: BoxDecoration(),
            child: Container(
              alignment: Alignment.center,
              height: 260,
              width: 300,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.article,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => UserPostManagement(),
                      ));
                    },
                  ),
                  SizedBox(width: 25),
                  IconButton(
                    icon: Icon(
                      Icons.pets,
                      color: Colors.white,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => UserPetManagement(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
