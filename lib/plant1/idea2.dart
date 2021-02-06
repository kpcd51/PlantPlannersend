import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/plant1/addidea.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'menu.dart';

class Idea1 extends StatefulWidget {
  @override
  _Idea1State createState() => _Idea1State();
}

class _Idea1State extends State<Idea1> {
  final GlobalKey <ScaffoldState> _scaffoldKey = GlobalKey <ScaffoldState>();
   final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xff96A999),
      body:
StreamBuilder(
        
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
                      
                      children: [
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
            Container(
              child: IconButton(
                              icon: Image.asset("image/add1.png"),
                              iconSize: 70,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Addidea()));
                              },
                            ),
        ),
                        SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                              height: 200,
                              width: 300,
                              child: FadeInImage.memoryNetwork(
                                  fit: BoxFit.cover,
                                  placeholder: kTransparentImage,
                                  image: snapshot.data.docs[index]
                                      .get('url'))),
                        ),
                      ],
                    );
                  });
        },

      ),
        
      );
    
  }
  void _backtomenu() async {
      final user = _auth.currentUser;
     
       Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return Menu(user: user);}));
       
                   
              
}
}