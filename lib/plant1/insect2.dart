import 'package:flutter/material.dart';


import 'package:helloworld/plant1/insect.dart';

class Insect2 extends StatefulWidget {
  @override
  _Insect2State createState() => _Insect2State();
}

class _Insect2State extends State<Insect2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/water2.png'),
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
                          MaterialPageRoute(builder: (context) => Insect()));
                    },
                  ),
            
            
            ),
            
        ],
      )
    );
  }
}