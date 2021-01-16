import 'package:flutter/material.dart';


import 'package:helloworld/plant1/replace.dart';

class Replace2 extends StatefulWidget {
  @override
  _Replace2State createState() => _Replace2State();
}

class _Replace2State extends State<Replace2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/how2.png'),
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
                          MaterialPageRoute(builder: (context) => Replace()));
                    },
                  ),
            
            
            ),
            
        ],
      )
    );
  }
}