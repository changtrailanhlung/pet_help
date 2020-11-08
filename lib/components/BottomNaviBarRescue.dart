import 'package:flutter/material.dart';
import 'package:pet_help/view/AddPet.dart';
import 'package:pet_help/view/RescuePetManagement.dart';
import 'package:pet_help/view/RescuePostManagement.dart';


class BottomNaviBarRescue extends StatelessWidget {
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
                  builder: (context) => AddPet(),
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
                        builder: (context) => MyPost(),
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
                          builder: (context) => RescuePetManagement(),
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
