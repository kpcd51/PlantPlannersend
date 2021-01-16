import 'package:flutter/material.dart';
import 'package:helloworld/plant1/fermented.dart';
import 'package:helloworld/plant1/insect.dart';
import 'package:helloworld/plant1/menu.dart';
import 'package:helloworld/plant1/replace.dart';
import 'package:helloworld/plant1/replace2.dart';
import 'package:helloworld/plant1/search.dart';



class Tip extends StatefulWidget {
  @override
  _TipState createState() => _TipState();
}

class _TipState extends State<Tip> {
  List<String> imgFood = [
    "image/bag.png",
    "image/pot.png",
    "image/insect.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/backtip.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
      
                  
            ListView(
          children: <Widget>[
             Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  Positioned(
                    top: 100,
                    child: IconButton(
                    color: Color(0xffEDEAE2),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu()));
                    },
                  ))
                  
                ],
              ),
            ),


            

           
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Text("         Plant Planner",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xffEDEAE2),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("                Tips",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xffEDEAE2),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height:30.0),
             Column( 
          
          children: <Widget>[
            
            Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 1.0),
              
              child: MaterialButton(
                
              padding: EdgeInsets.all(20.0),
              height: 100,
              minWidth: 200,
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Fermented()));}
        ,
                child: choice(imgFood[0], "วิธีทำน้ำหมัก"),
              ),
            ),
            SizedBox(height:20.0),
           Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 1.0),
            child:MaterialButton(
                
              padding: EdgeInsets.all(20.0),
              height: 100,
              minWidth: 200,
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Replace()));}
        ,
                child: choice(imgFood[1], "วิธีย้ายกระถาง"),
                ),
                ),
            
                 SizedBox(height:20.0),
                 Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 1.0),
            child:MaterialButton(
                
                
              padding: EdgeInsets.all(20.0),
              height: 100,
              minWidth: 200,
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Insect()));}
        ,
                child: choice(imgFood[2], "วิธีไล่แมลงศัตรูพืช2"),
                ),
                ),
          
        ],
      ),
        ],
      ),
      
              
            /*Positioned(
              right: 100,
              top: 660,
             
      child:Image.asset("image/tippic.png",
          width: 200,height: 200,),
            ),*/
          
           
        
          
              
              
          
            
          
        ],
    )
    
    );
     
  }
     
        
         
  }