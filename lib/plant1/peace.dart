import 'package:flutter/material.dart';
import 'package:helloworld/plant1/Search.dart';

class Peace extends StatefulWidget {
  @override
  _PeaceState createState() => _PeaceState();
}

class _PeaceState extends State<Peace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/peacein.png'),
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
                          MaterialPageRoute(builder: (context) => Search()));
                    },
                  ),
            
            
            )
        ],
      )
    );
  }
}