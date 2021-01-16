import 'package:flutter/material.dart';

import 'package:helloworld/plant1/fermented2.dart';
import 'package:helloworld/plant1/tip.dart';
class Fermented extends StatefulWidget {
  @override
  _FermentedState createState() => _FermentedState();
}

class _FermentedState extends State<Fermented> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/fermenwater.png'),
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
                          MaterialPageRoute(builder: (context) => Tip()));
                    },
                  ),
            
            
            ),
            Positioned(
        top: 25,
        right: 10,
        child: IconButton(
                    color: Color(0xff424C47),
                    icon: Icon(Icons.arrow_forward),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Fermented2()));
                    },
                  ),
            
            
            )
        ],
      )
    );
  }
}