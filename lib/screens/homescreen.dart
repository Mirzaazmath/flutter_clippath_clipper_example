import 'package:flutter/material.dart';
import 'package:flutter_clippath/screens/clipperclass.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: MyClipper(),

          child: Container(
            height: 200,
            width:200,
            color: Colors.brown,
          ),
        ),
      ),

    );
  }
}
