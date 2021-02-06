import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/plant1/Idea3.dart';
import 'package:helloworld/plant1/garden.dart';
import 'package:helloworld/plant1/garden3.dart';
import 'package:helloworld/plant1/garden4.dart';
import 'package:helloworld/plant1/garden5.dart';
import 'package:helloworld/plant1/idea.dart';
import 'package:helloworld/plant1/idea2.dart';
import 'package:helloworld/plant1/idea4.dart';

import 'package:helloworld/plant1/login2.dart';
import 'package:helloworld/plant1/search.dart';
import 'package:helloworld/plant1/tip.dart';

class Menu extends StatefulWidget {
  final User user;

  const Menu({Key key, this.user}) : super(key: key);
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final FirebaseAuth _auth = FirebaseAuth.instance;

  List<String> imgFood = [
    "image/garden.png",
    "image/search.png",
    "image/tips.png",
    "image/exam.png",
    /*"image/affogato.png",
    "image/green tea leamon.png",
    "image/Lipton-tea.jpg",
    "image/rose.jpg",
    "image/buble tea.jpg",
    "image/milk tea.png",
    "image/Milk_Shake.png",
    "image/Hot-Dark-Chocolate.png",
    "image/chocolate.png",
    "image/Stawberry cheesecake drink.png",
    "image/Banana-smoothies.png",
    "image/croissant.png",     
    "image/cookie.png",
    "image/cake chocolate.png",
    "image/cheesecake.png",
    "image/chocolate-brownies.png",*/
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(key: _scaffoldKey,
      
      appBar: AppBar(
        backgroundColor: Color(0xff998476),
        leading:IconButton(
        onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Login2()));}
        ,
      
      icon: Icon(
            Icons.logout,
            color: Colors.white 
          ),
          ),title: Text('       Welcome ${widget.user.displayName}'),
      ),
      
      backgroundColor: Color(0xffD2DBC8),
     /*body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/backm.jpg"),
            fit: BoxFit.cover,
          ),
        ),*/
        
        body: SafeArea(
          
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10,),

            

           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("         Let's start",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff623B28),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
SizedBox(height: 20),
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
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Garden5()));}
        ,
                child: choice(imgFood[0], "Go to garden"),
              ),
            ),
            SizedBox(height:10.0),
           Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 1.0),
            child:MaterialButton(
                
              padding: EdgeInsets.all(20.0),
              height: 100,
              minWidth: 200,
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Search()));}
        ,
                child: choice(imgFood[1], "information"),
                ),
                ),
            
                 SizedBox(height:10.0),
                 Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 1.0),
            child:MaterialButton(
                
                
              padding: EdgeInsets.all(20.0),
              height: 100,
              minWidth: 200,
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Tip()));}
        ,
                child: choice(imgFood[2], "Tips"),
                ),
                ),
                 
                 SizedBox(height:10.0),

                 Padding(
              
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 1.0),
            child:MaterialButton(
                
              padding: EdgeInsets.all(20.0),
              height: 100,
              minWidth: 200,
              color: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Idea3()));}
        ,
                child: choice(imgFood[3], "ideas garden"),
                ),
                 )
              ],
            ),
            
                
        ],
      ),
    ),
  );
  }
      
    

}
    Widget choice(String img, String menu){
    return Padding(
          padding: EdgeInsets.all(16.0),
                child: GestureDetector(
                 /* onTap: () { 
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChoiceScreen(menuImg: img, foodName: foodName, foodPrice: price,)
                          )
                        );
                        },*/
                  child: Row(
                    
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                        width: 70.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(img)
                            )
                        )
                          
                        ),
                        
                            Text(menu,
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff623B28),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            
                          ],
                        ),
                      ),

                      
                      
                    ]
                  ),
                ) 
                  
    );
    
  }

