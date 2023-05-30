import 'package:flutter/material.dart';
class MyClipper extends CustomClipper<Path>{
  @override

  /*
  Note :
   LineTo()
   this method create a shright line from point to point
   MoveTO()
   this method move the point to give point
   quadraticBezierTo()
   This method is used to create a quadratic bezier curve.
   c= controlpoint
   p = point
   first width
  syntax  quadraticBezierTo(c,c,p,p);

  * */

  Path getClip(Size size) {

   Path path= Path();
   path.lineTo(0, 0);
   path.quadraticBezierTo(size.width/2, size.height/2, 0,size.height);
   path.lineTo(size.width, size.height/2);


   path.close();
   return path;
  }
/// this must be true
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;
    // TODO: implement shouldReclip



}