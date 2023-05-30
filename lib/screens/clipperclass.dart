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
  cubicTo()
  This method is used to create a cubic curve by specifying 2 control points and endpoint.
  arcToPoint()
  This method is used to draw the arc from the starting point to the specified point. We can customize the arc by setting a radius, clockwise/anti-clockwise direction.



  * */

  Path getClip(Size size) {

   Path path= Path();
   // here we are going opp direction
   // first minus 20 from width
   path.moveTo(20, 0);
   path.lineTo(size.width-20, 0);
   path.arcToPoint(Offset(size.width, 20));
   path.lineTo(size.width, size.height-20);
   path.arcToPoint(Offset(size.width-20,size.height));
   path.lineTo(20, size.height);
   path.arcToPoint(Offset(0,size.height-20));
    path.lineTo(0, 20);

   







   path.close();
   return path;
  }
/// this must be true
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>true;
    // TODO: implement shouldReclip



}