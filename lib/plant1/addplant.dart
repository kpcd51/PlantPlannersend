import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/plant1/garden.dart';
import 'package:helloworld/plant1/login2.dart';
import 'package:helloworld/plant1/menu.dart';
import 'package:helloworld/plant1/login2.dart';
import 'package:helloworld/plant1/garden.dart';



class Addplant extends StatefulWidget {
  @override
  _AddplantState createState() => _AddplantState();
}

class _AddplantState extends State<Addplant> {
   final GlobalKey <ScaffoldState> _scaffoldKey = GlobalKey <ScaffoldState>();
   final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/addback.jpg'),
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
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Garden()));},
                  ),
            
            
            ),
            Positioned(
              top: 80,
              left: 60,
              child: Text(
                      "Choose Your",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 45.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 130,
              left: 100,
              child: Text(
                      "   plant",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 45.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
        top: 575,
              left: 225,
        child: IconButton(
                    icon: Image.asset("image/add1.png"),iconSize:70,
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Menu()));},
        
                  ),
            
            
            ),
             
               Positioned(
              top: 565,
              left: 70,
              
              height: 100.0, child: Image.asset("image/schedule.png")),
              Positioned(
              top: 670,
              left: 70,
              child: Text(
                      "ตารางรดน้ำ",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 20.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 670,
              left: 225,
              child: Text(
                      "เพิ่มต้นไม้",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 20.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
                    
            
            
        ],
        


      )
    );
  }
  
}