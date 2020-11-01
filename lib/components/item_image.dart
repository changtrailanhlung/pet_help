import 'package:flutter/cupertino.dart';

class Itemimage extends StatelessWidget {
  final String imgSrc;
  const Itemimage({
    Key key,
    @required this.size, this.imgSrc,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(imgSrc,height: size.height * 0.35,width: double.infinity, fit: BoxFit.fill,);
  }
}