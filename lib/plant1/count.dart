import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helloworld/plant1/garden5.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class Count extends StatefulWidget {

  final testCount;
  Count({this.testCount});
  @override
  _CountState createState() => _CountState();
}

class _CountState extends State<Count> {
  var countdown;
  Timer _timer;

  @override
  /*void initState() {    
    super.initState();
    
  }*/

  void _startTimer(){
      countdown = widget.testCount;
      _timer = Timer.periodic(Duration(seconds: 1),(timer) {
        setState(() {
          if(countdown>0){
            countdown--;
          }
          else{
            _timer.cancel();
          }
        });

       });

    }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance.collection("planticon").snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> querysnapshot) {
        return Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('image/plantback4.jpg'),
                      fit: BoxFit.cover)),
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
              padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
              child: IconButton(
                color: Color(0xff4E514A),
                icon: Icon(Icons.arrow_back),
                iconSize: 45,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Garden5()));
                },
              ),
            ),
            Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                                  child: IconButton(
                  color: Color(0xff424C47),
                  icon: Icon(Icons.run_circle),
                  iconSize: 50,
                  onPressed: () => _startTimer(),
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
              padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 450,
                  width: double.infinity,
                  // color: Colors.white,
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: querysnapshot.data.docs.length,
                      itemBuilder: (BuildContext context, int index) {
                        var _counter =
                            querysnapshot.data.docs[index].data()['day'];
                        return Column(
                          children: [
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(querysnapshot
                                                .data.docs[index]
                                                .data()['image'])),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                        "${querysnapshot.data.docs[index].data()['name']}",
                                        style: TextStyle(
                                            color: Color(0xff623B28),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17.0)),
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                ),
                                (_counter > 0) ? Text('') : Text('Done'),
                                Container(
                                  height: 50,
                                  width: 150,
                                  color: Colors.green[200],
                                  child: Center(child: Text("$countdown")),
                                ),
                                
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            )
                          ],
                        );
                      }),
                ),
              ),
            ),
          ],
        );
      },
      
      // return Stack(
      // children: [
      //  Container(

      //           decoration: BoxDecoration(

      //                           image: DecorationImage(
      //                               image: AssetImage('image/plantback4.jpg'),
      //                               fit: BoxFit.cover),
      //                     ),
      //           ),

      //   SingleChildScrollView(

      //     child: Column(

      //       children: <Widget>[
      //         SizedBox(height:15),
      //         TableCalendar(

      //         headerStyle: HeaderStyle(
      //           formatButtonVisible: false,
      //         ),

      //           calendarController: _controller),

      //       ],

      //     )

      //   )

      // ],

      // );
    ));
    
  }
}

// String readTimestamp(int timestamp) {
//     var now = new DateTime.now();
//     var format = new DateFormat('HH:mm a');
//     var date = new DateTime.fromMicrosecondsSinceEpoch(timestamp * 1000);
//     var diff = date.difference(now);
//     var time = '';

//     if (diff.inSeconds <= 0 || diff.inSeconds > 0 && diff.inMinutes == 0 || diff.inMinutes > 0 && diff.inHours == 0 || diff.inHours > 0 && diff.inDays == 0) {
//       time = format.format(date);
//     } else {
//       if (diff.inDays == 1) {
//         time = diff.inDays.toString() + 'DAY AGO';
//       } else {
//         time = diff.inDays.toString() + 'DAYS AGO';
//       }
//     }

//     return time;
