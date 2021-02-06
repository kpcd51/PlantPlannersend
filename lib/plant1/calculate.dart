import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// import 'package:helloworld/plant1/calendar.dart';
// import 'package:helloworld/plant1/firebase.dart';
// import 'addplant.dart';
// import 'package:helloworld/plant1/menu.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helloworld/plant1/addplant.dart';
import 'package:helloworld/plant1/calendar.dart';
import 'package:helloworld/plant1/count.dart';
import 'package:helloworld/plant1/menu.dart';
// import 'firebase.dart';

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("planticon").snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> querysnapshot) {
          if (querysnapshot.connectionState == ConnectionState.waiting) {
            return Center(
                child: CircularProgressIndicator(
              backgroundColor: Colors.greenAccent,
            ));
          } else {
           
            return Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('image/backgarden.jpg'),
                        fit: BoxFit.cover)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 0, 0),
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
                padding: const EdgeInsets.fromLTRB(90, 70, 0, 0),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 120, 0, 0),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0,180,0,0),
                child: Container(
                  height: 410,
                  
                  width: MediaQuery.of(context).size.width,
                  
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: querysnapshot.data.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                         var _counter = querysnapshot.data.docs[index].data()['day'];   
                        return Column(
                          children: [
                               Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: IconButton(
                  icon: Image.asset("image/schedule.png"),
                  iconSize: 100,
                  onPressed: () {
                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => Count(testCount: _counter,)));
                  },
                ),
              ),
                                    
                                    
                          ],
                        );
                        
                      }),
                ),
              ),
           
              
            ]);
          }
        },
      ),
    );
  }
void _backtomenu() async {
    final user = _auth.currentUser;

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return Menu(user: user);
    }));
  }
  
// }
}
