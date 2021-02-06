import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helloworld/plant1/garden5.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller = CalendarController();
  }

  

  @override
  Widget build(BuildContext context) {
    print(new DateFormat.yMMMd().format(new DateTime.now()));
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
                    SizedBox(height: 15),
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
               GridView.builder(
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount (crossAxisCount: 2),
                 itemCount: querysnapshot.data.docs.length,
                  itemBuilder: (context,index){
                   // var _counter = querysnapshot.data.docs[index].data()['day'];                    
                     var dateplant = querysnapshot.data.docs[index].data()['Date']; 
                      
                 child: Text('$dateplant');

                }
                  
                 
                )
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


String readTimestamp(int timestamp) {
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
  }