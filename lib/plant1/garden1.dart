import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/plant1/firebase.dart';

import 'package:helloworld/plant1/menu.dart';




class Garden1 extends StatefulWidget {
  @override
  _Garden1State createState() => _Garden1State();
}

class _Garden1State extends State<Garden1> {
   final GlobalKey <ScaffoldState> _scaffoldKey = GlobalKey <ScaffoldState>();
   final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder <DataController>(
        init: DataController(),
        builder: (value){
          return new FutureBuilder(
            future: value.getData("planticon"),
            builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(child: CircularProgressIndicator(backgroundColor: Colors.greenAccent,));
              }
              else{
                return new ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      child: GestureDetector(
                        
                        child: Container(                       
                        height: 80.0,
                        width: 40.0,
                        child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[Column( 

                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                           

                            

                              Padding(padding: EdgeInsets.only(left:20.0),
                                child: Text("${snapshot.data[index].data()['name']}",
                                          style: TextStyle(color: Color(0xff623B28),
                                          fontWeight: FontWeight.bold, fontSize: 16.0)),
                              ), 

                            
                            
                              Padding(padding: EdgeInsets.only(left:20.0),
                                child: Container(
                                  height: 200,
                                  width: 100,
                                  decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(snapshot.data[index].data()['image'])),),
                              ),
                              )]
                        ),          
                              ]
                        )
                              
                        )
                      )
                    );
                  },
                );
              }
            },
          );
        },
      )
    );
  }
  void _backtomenu() async {
      final user = _auth.currentUser;
     
       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return Menu(user: user);}));
       
                   
              
}
}