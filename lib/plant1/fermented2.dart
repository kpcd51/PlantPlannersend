import 'package:flutter/material.dart';


import 'package:helloworld/plant1/fermented.dart';

class Fermented2 extends StatefulWidget {
  @override
  _Fermented2State createState() => _Fermented2State();
}

class _Fermented2State extends State<Fermented2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/fermenwater2.png'),
            fit: BoxFit.cover
          )
        ),
      ),
      Positioned(
        top: 25,
        child: IconButton(
                    color: Color(0xff424C47),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Fermented()));
                    },
                  ),
            
            
            ),
            
        ],
      )
    );
  }
}