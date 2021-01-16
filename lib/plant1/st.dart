import 'package:flutter/material.dart';
import 'package:helloworld/plant1/Search.dart';

class St extends StatefulWidget {
  @override
  _StState createState() => _StState();
}

class _StState extends State<St> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/stin.png'),
            fit: BoxFit.cover
          )
        ),
      ),
      Positioned(
        top: 22,
        left: 0,
        child: IconButton(
                    color: Color(0xff424C47),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 40,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Search()));
                    },
                  ),
            
            
            )
        ],
      )
    );
  }
}