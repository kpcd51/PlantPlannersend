import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/plant1/login2.dart';
import 'package:helloworld/plant1/menu.dart';
import 'package:helloworld/plant1/login2.dart';
import 'package:helloworld/plant1/addplant.dart';



class Garden extends StatefulWidget {
  @override
  _GardenState createState() => _GardenState();
}

class _GardenState extends State<Garden> {
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
            image: AssetImage('image/backgarden.jpg'),
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
                     _backtomenu();
                    },
                  ),
            
            
            ),
            Positioned(
              top: 80,
              left: 85,
              child: Text(
                      "Plan Your",
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
                      "Garden!!",
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
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Addplant()));},
        
                  ),
            
            
            ),
             
               Positioned(
              top: 560,
              left: 60,
              
              child: IconButton(
                    icon: Image.asset("image/schedule.png"),iconSize:100,
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Addplant()));},
        
                  ),),
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
  void _backtomenu() async {
      final user = _auth.currentUser;
     
       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return Menu(user: user);}));
       
                   
              
}
}