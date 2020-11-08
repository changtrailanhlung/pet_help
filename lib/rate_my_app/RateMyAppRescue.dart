import 'package:flutter/material.dart';
import 'package:pet_help/view/RescueHome.dart';
import 'package:rate_my_app/rate_my_app.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RateMyAppRescue extends StatefulWidget {
  @override
  _RateMyAppRescue createState() => _RateMyAppRescue();
}

class _RateMyAppRescue extends State<RateMyAppRescue> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
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
            'Rating',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        backgroundColor: Color.fromRGBO(253, 158, 121, 1),
        centerTitle: true,
      ),
        body: Center(
            child: SmoothStarRating(
              rating: rating,
              isReadOnly: false,
              size: 50,
              filledIconData: Icons.star,
              halfFilledIconData: Icons.star_half,
              defaultIconData: Icons.star_border,
              starCount: 5,
              allowHalfRating: true,
              spacing: 2.0,
              onRated: (value) {
                print("rating value -> $value");
                // print("rating value dd -> ${value.truncate()}");
              },
            )),
    );
  }
}
