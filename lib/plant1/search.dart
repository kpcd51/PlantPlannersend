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
class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu()));
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
            Container(
              
              height: 200,
              child:GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Monstera()));},
              child: Image.asset(
                "image/monstera.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            ),
             Container(
              
              height: 200,
              child:GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Snakeplant()));},
              child: Image.asset(
                "image/snakeplant.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            ),
            Container(
              
              height: 200,
              child:GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Suc()));},
              child: Image.asset(
                "image/suc.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            ),
            Container(
              
              height: 200,
              child:GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => St()));},
              child: Image.asset(
                "image/st.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            ),
            Container(
              
              height: 200,
              child:GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Tulip()));},
              child: Image.asset(
                "image/tulip.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            ),
            Container(
              
              height: 200,
              child:GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Fern()));},
              child: Image.asset(
                "image/fern.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            ),
            Container(
              
              height: 200,
              child:GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Rubber()));},
              child: Image.asset(
                "image/rubber.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            ),
            Container(
              
              height: 200,
              child:GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Peace()));},
              child: Image.asset(
                "image/peace.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            ),
            Container(
              
              height: 200,
              child:GestureDetector(
              onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Opuntia()));},
              child: Image.asset(
                "image/opuntia.png",
               // fit: BoxFit.cover,
                width: 400,
                height: 400,
              ),
            ),
            ),

            
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
}
