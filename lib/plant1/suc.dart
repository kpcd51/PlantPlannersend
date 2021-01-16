import 'package:flutter/material.dart';
import 'package:helloworld/plant1/Search.dart';

class Suc extends StatefulWidget {
  @override
  _SucState createState() => _SucState();
}

class _SucState extends State<Suc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/sucin.png'),
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