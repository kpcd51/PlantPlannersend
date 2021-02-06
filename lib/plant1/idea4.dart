import 'package:helloworld/plant1/fern.dart';
import 'package:helloworld/plant1/menu.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/plant1/monstera.dart';
import 'package:helloworld/plant1/opuntia.dart';
import 'package:helloworld/plant1/peace.dart';
import 'package:helloworld/plant1/rubber.dart';
import 'package:helloworld/plant1/snakeplant.dart';
import 'package:helloworld/plant1/st.dart';
import 'package:helloworld/plant1/suc.dart';
import 'package:helloworld/plant1/tulip.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/plant1/firebase.dart';
import 'addplant.dart';
import 'package:helloworld/plant1/menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase.dart';

import 'package:transparent_image/transparent_image.dart';
class Idea4 extends StatefulWidget {
  @override
  _Idea4State createState() => _Idea4State();
}

class _Idea4State extends State<Idea4> {
  final GlobalKey <ScaffoldState> _scaffoldKey = GlobalKey <ScaffoldState>();
   final FirebaseAuth _auth = FirebaseAuth.instance;
   
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff96A999),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                children: <Widget>[
                  Positioned(
                    top: 100,
                    child: IconButton(
                    color: Color(0xAAFFFFFF),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 50,
                    onPressed: () {
                      _backtomenu();
                    },
                  ))
                  
                ],
              ),
            ),
            Padding(
              
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[300],
                                offset: Offset(2, 1),
                                blurRadius: 5)
                          ]),
                      child: ListTile(
                        leading: Icon(Icons.search, color: Color(0xff4C241D)),
                        title: TextField(
                          decoration: InputDecoration(
                              hintText: "ค้นหา...", border: InputBorder.none),
                        ),
                      ))
                ],
              ),
            ),
            /*Container(
              //color: Colors.red,
              height: 200,
              //width: 130,
              child: Image.asset(
                "image/snakeplant.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            /*SizedBox(
              height: 10,
            )*/*/
            Padding(
                            padding: const EdgeInsets.fromLTRB(0,150,0,0),
                            child: Container(
                              
                              height: 800,
                              width: double.maxFinite,
                              //color: Colors.redAccent,
                              
                              child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('imageURLs').snapshots(),
        builder: (context, snapshot) {
          return !snapshot.hasData
              ? Center(
                  child: CircularProgressIndicator(),
                )
              :  ListView.builder(
                  itemCount: snapshot.data.docs.length,
                  itemBuilder: (context, index) {
                    
                    return Column(
                      
                    );
                  });
        },
      ),
                            ),
                          )
            
            /*IconButton(
              //padding: const EdgeInsets.fromLTRB(2, 3, 0, 0),
              
  icon: Image.asset(
                "image/monstera.png",
                width: 400,
                height: 400,
              ),
  iconSize: 500,
  
  onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Monstera()));}
        ,
)*/
           /* Container(
              height: 200,
              child: Image.asset(
                "image/monstera.png",
                width: 400,
                height: 400,
              ),
              ),
            Container(
              height: 200,
              child: Image.asset(
                "image/rubber.png",
                width: 400,
                height: 400,
              ),
            ),
            Container(
              height: 200,
              child: Image.asset(
                "image/st.png",
                width: 400,
                height: 400,
              ),
            ),
            Container(
              height: 200,
              child: Image.asset(
                "image/tulip.png",
                width: 400,
                height: 200,
              ),
            ),
            Container(
              height: 200,
              child: Image.asset(
                "image/opuntia.png",
                width: 400,
                height: 400,
              ),
            ),
            Container(
              height: 200,
              child: Image.asset(
                "image/peace.png",
                width: 400,
                height: 400,
              ),
            ),
            Container(
              height: 200,
              child: Image.asset(
                "image/suc.png",
                width: 400,
                height: 400,
              ),
            ),
            Container(
              height: 200,
              child: Image.asset(
                "image/fern.png",
                width: 400,
                height: 400,
              ),
            ),*/
          ],
        ));
  }
  void _backtomenu() async {
      final user = _auth.currentUser;
     
       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return Menu(user: user);}));
       
                   
              
}
}
