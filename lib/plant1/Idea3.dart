import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/plant1/addidea.dart';
import 'package:helloworld/plant1/addidea2.dart';
import 'package:helloworld/plant1/firebase.dart';
import 'addplant.dart';
import 'package:helloworld/plant1/menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase.dart';

import 'package:transparent_image/transparent_image.dart';
class Idea3 extends StatefulWidget {
  @override
  _Idea3State createState() => _Idea3State();
}

class _Idea3State extends State<Idea3> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  Future<void> showAlert(String title, String message) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(message),
            actions: [
              FlatButton(
                onPressed: () {
                  firebaseFirestore
                      .collection("planticon")
                      .doc('Image')
                      .delete();
                },
                child: Text(
                  "Yes",
                  style: TextStyle(color: Color(0xffFD7778)),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  children: [
                    Text(
                      "No",
                      style: TextStyle(color: Color(0xffFD7778)),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<DataController>(
            init: DataController(),
            builder: (value) {
              return new FutureBuilder(
                  future: value.getData("planticon"),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                          child: CircularProgressIndicator(
                        backgroundColor: Colors.greenAccent,
                      ));
                    } else {
                      return Stack(
                        children: [
                          Container(
                            height: 800,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('image/backgarden.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10,35,0,0),
                            
                             
                               child: IconButton(
                                  color: Color(0xff424C47),
                                  icon: Icon(Icons.arrow_back),
                                  iconSize: 50,
                                  onPressed: () {
                                    _backtomenu();
                                  },
                                ),
                              
                            
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(90,50,0,0),
                            child: Text(
                              "Idea Garden",
                              style: TextStyle(
                                color: Color(0xff4E514A),
                                fontSize: 35.0,
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                         
                          Padding(
                            padding: const EdgeInsets.fromLTRB(290,40,0,0),
                            child: IconButton(
                              icon: Icon(Icons.add_to_photos_rounded),
                              iconSize: 50,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Addidea2()));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,100,0,0),
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
                      children: [
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
                            ),
                          )
                        ],
                      );
                      /*return new ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Stack(
                            children: [
                              Container(
                                height: 700,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('image/backgarden.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                              Positioned(
                                top: 0,
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
                                top: 40,
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
                                top: 90,
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
                                top: 555,
                                left: 225,
                                child: IconButton(
                                  icon: Image.asset("image/add1.png"),
                                  iconSize: 70,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Addplant()));
                                  },
                                ),
                              ),
                              Positioned(
                                top: 540,
                                left: 60,
                                child: IconButton(
                                  icon: Image.asset("image/schedule.png"),
                                  iconSize: 100,
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Addplant()));
                                  },
                                ),
                              ),
                              Positioned(
                                top: 650,
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
                                top: 650,
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
                              Positioned(
                                top: 200,
                                left: 35,
                                child: Container(
                                  height: 75,
                                  width: 75,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot.data[index]
                                            .data()['image'])),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 280,
                                left: 40,
                                child: Text(
                                    "${snapshot.data[index].data()['name']}",
                                    style: TextStyle(
                                        color: Color(0xff623B28),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.0)),
                              )
                            ],
                          );
                        },
                      );*/
                    }
                  });
            }));
  }

  void _backtomenu() async {
    final user = _auth.currentUser;

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return Menu(user: user);
    }));
  }
}