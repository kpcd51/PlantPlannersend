import 'dart:async';

import 'package:flutter/material.dart';
import 'package:helloworld/plant1/login1.dart';
import 'package:helloworld/plant1/mystyle.dart';


class Logo extends StatefulWidget {
  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2), 
      ()=>Navigator.push(
        context, MaterialPageRoute(builder: (context)=>Login1() )
        )
      );
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7C9C91),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            MyStyle().logoMain(),
            MyStyle().storeName("Plant Planner"),
          ],
        )
      ,)
    );
  }
}