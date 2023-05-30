import 'package:flutter/material.dart';
class MyClipper extends CustomClipper<Path>{
  @override

  /*
  Note :
   LineTo()
   this method create a shright line from point to point
  * */

  Path getClip(Size size) {

   Path path= Path();
// Move initial point to (0,h);
   path.moveTo(0,size.height);

   path.lineTo(size.width, size.height);
   path.lineTo(size.width, 0);
   path.close();
   return path;
  }
/// this must be true
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;
    // TODO: implement shouldReclip



}