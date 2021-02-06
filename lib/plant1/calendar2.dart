import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helloworld/plant1/garden5.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar2 extends StatefulWidget {
  @override
  _Calendar2State createState() => _Calendar2State();
}

class _Calendar2State extends State<Calendar2> {
  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  

  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_back),
            iconSize: 45,
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Garden5()));
            },
          ),title: Text( "          ตารางรดน้ำ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                  ),
                                      ),
        ),
        body: StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance.collection("planticon").snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> querysnapshot) {
           
               
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('image/plantback4.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
                SingleChildScrollView(
                    child: Column(
                  children: <Widget>[
                    SizedBox(height: 0),
                    TableCalendar(
                        headerStyle: HeaderStyle(
                          formatButtonVisible: false,
                        ),
                        calendarController: _controller),
                  ],
                )),
                /*ListView.builder(
                  itemCount: querysnapshot.data.docs.length,
                  itemBuilder: (context,index){
                   // var _counter = querysnapshot.data.docs[index].data()['day'];                    
                     
                        
                })*/
               
               
                             Padding(    
                               padding: const EdgeInsets.fromLTRB(40, 330, 0, 0),
                               
                                  child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('image/monsteraicon.png'),)),
                                      ),
                                    
                                    
                                
                                
                              ),
                               Padding(    
                               padding: const EdgeInsets.fromLTRB(25, 390, 0, 0),
                               
                                  child: Text(
                                      "มอนเสตอร่า",
                  style: TextStyle(
                    color: Color(0xff4E514A),
                    fontSize: 17.0,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                  ),
                                      ),
                                    
                                    
                                
                                
                              ),
                              Padding(    
                               padding: const EdgeInsets.fromLTRB(160, 330, 0, 0),
                               
                                  child: Container(
                                      height: 55,
                                      width: 55,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('image/snakeplanticon.png'),)),
                                      ),
                                    
                                    
                                
                                
                              ),
                               Padding(    
                               padding: const EdgeInsets.fromLTRB(160, 390, 0, 0),
                               
                                  child: Text(
                                      "ลิ้นมังกร",
                  style: TextStyle(
                    color: Color(0xff4E514A),
                    fontSize: 17.0,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
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


/*String readTimestamp(int timestamp) {
    var now = new DateTime.now();
    var format = new DateFormat('HH:mm a');
    var date = new DateTime.fromMicrosecondsSinceEpoch(timestamp * 1000);
    var diff = date.difference(now);
    var time = '';

    if (diff.inSeconds <= 0 || diff.inSeconds > 0 && diff.inMinutes == 0 || diff.inMinutes > 0 && diff.inHours == 0 || diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else {
      if (diff.inDays == 1) {
        time = diff.inDays.toString() + 'DAY AGO';
      } else {
        time = diff.inDays.toString() + 'DAYS AGO';
      }
    }

    return time;
  }*/