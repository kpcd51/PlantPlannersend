import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/plant1/garden.dart';
import 'package:helloworld/plant1/garden1.dart';
import 'package:helloworld/plant1/garden3.dart';
import 'package:helloworld/plant1/garden4.dart';

import 'package:helloworld/plant1/menu.dart';


/*- image/fernicon.png
     - image/monsteraicon.png
     - image/rubberplanticon.png
     - image/suculanticon.png
     - image/sticon.png
     - image/peaceicon.png
     - image/opuntiaicon.png
     - image/tulipicon.png
     - image/snakeplanticon.png*/


class Addplant extends StatefulWidget {
  @override
  _AddplantState createState() => _AddplantState();
}

class _AddplantState extends State<Addplant> {
   final GlobalKey <ScaffoldState> _scaffoldKey = GlobalKey <ScaffoldState>();
   final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/addback.jpg'),
            fit: BoxFit.cover
          )
        ),
      ),
      Positioned(
        top: 25,
        child: IconButton(
                    color: Color(0xff424C47),
                    icon: Icon(Icons.arrow_back),
                    iconSize: 50,
                    onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));},
                  ),
            
            
            ),
            Positioned(
              top: 80,
              left: 60,
              child: Text(
                      "Choose Your",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 45.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 130,
              left: 100,
              child: Text(
                      "   plant",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 45.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
        top: 230,
              left: 30,
        child: IconButton(
                    icon: Image.asset("image/monsteraicon.png"),iconSize:70,
                    onPressed: ()async{Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));
                    await FirebaseFirestore.instance.collection('planticon').add({                              
                              "name": "มอนสเตอร่า",
                              "image": "https://firebasestorage.googleapis.com/v0/b/plant-dc91f.appspot.com/o/monsteraicon.png?alt=media&token=f9c9f4bd-d8b4-4839-b05d-fcb242fad348",
                            });
                    },
        
                  ),
            
            
            ),
             
               Positioned(
        top: 230,
              left: 145,
        child: IconButton(
                    icon: Image.asset("image/fernicon.png"),iconSize:70,
                   onPressed: ()async{Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));
                    await FirebaseFirestore.instance.collection('planticon').add({                              
                              "name": "เฟิร์น",
                              "image": "https://firebasestorage.googleapis.com/v0/b/plant-dc91f.appspot.com/o/fernicon.png?alt=media&token=c2811314-bfd2-45c0-89c1-572d26f1370e",
                            });
                    },
        
                  ),
            
            
            ),
            Positioned(
        top: 230,
              left: 250,
        child: IconButton(
                    icon: Image.asset("image/suculanticon.png"),iconSize:70,
                   onPressed: ()async{Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));
                    await FirebaseFirestore.instance.collection('planticon').add({                              
                              "name": "ไม้อวบน้ำ",
                              "image": "https://firebasestorage.googleapis.com/v0/b/plant-dc91f.appspot.com/o/suculanticon.png?alt=media&token=1546a84c-2160-4893-b0b4-64d6881bbec0",
                            });
                    },
                  ),
            
            
            ),
             Positioned(
        top: 380,
              left: 25,
        child: IconButton(
                    icon: Image.asset("image/peaceicon.png"),iconSize:70,
                    onPressed: ()async{Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));
                    await FirebaseFirestore.instance.collection('planticon').add({                              
                              "name": "ดอกเดหลี",
                              "image": "https://firebasestorage.googleapis.com/v0/b/plant-dc91f.appspot.com/o/peaceicon.png?alt=media&token=3731170e-f11c-4bf3-9ffd-747deb0d22a4",
                            });
                    },
        
                  ),
            
          
            ),
             Positioned(
        top: 380,
              left: 140,
        child: IconButton(
                    icon: Image.asset("image/opuntiaicon.png"),iconSize:70,
                    onPressed: ()async{Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));
                    await FirebaseFirestore.instance.collection('planticon').add({                              
                              "name": "หูมิกกี้เม้าส์",
                              "image": "https://firebasestorage.googleapis.com/v0/b/plant-dc91f.appspot.com/o/opuntiaicon.png?alt=media&token=8d84ee9e-ac7a-47d1-bd26-f724a6067b6f",
                            });
                    },
        
                  ),
            
          
            ),
            Positioned(
        top: 380,
              left: 256,
        child: IconButton(
                    icon: Image.asset("image/tulipicon.png"),iconSize:70,
                    onPressed: ()async{Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));
                    await FirebaseFirestore.instance.collection('planticon').add({                              
                              "name": "ทิวลิป",
                              "image": "https://firebasestorage.googleapis.com/v0/b/plant-dc91f.appspot.com/o/tulipicon.png?alt=media&token=ca342759-7929-48fc-8e73-78744b543c84",
                            });
                    },
        
                  ),
            
          
            ),
            Positioned(
        top: 540,
              left: 25,
        child: IconButton(
                    icon: Image.asset("image/sticon.png"),iconSize:70,
                    onPressed: ()async{Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));
                    await FirebaseFirestore.instance.collection('planticon').add({                              
                              "name": "เศรษฐีเรือนนอก",
                              "image": "https://firebasestorage.googleapis.com/v0/b/plant-dc91f.appspot.com/o/sticon.png?alt=media&token=f899341c-f3c9-4c26-84e3-88c503645843",
                            });
                    },
        
                  ),
            
          
            ),
            Positioned(
        top: 540,
              left: 140,
        child: IconButton(
                    icon: Image.asset("image/snakeplanticon.png"),iconSize:70,
                    onPressed: ()async{Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));
                    await FirebaseFirestore.instance.collection('planticon').add({                              
                              "name": "ลิ้นมังกร",
                              "image": "https://firebasestorage.googleapis.com/v0/b/plant-dc91f.appspot.com/o/snakeplanticon.png?alt=media&token=0fd55e2e-2b32-43cf-b229-c3c9c1a17b95",
                            });
                    },
        
                  ),
            
          
            ),
            Positioned(
        top: 540,
              left: 256,
        child: IconButton(
                    icon: Image.asset("image/rubberplanticon.png"),iconSize:70,
                    onPressed: ()async{Navigator.push(context,MaterialPageRoute(builder: (context) => Garden4()));
                    await FirebaseFirestore.instance.collection('planticon').add({                              
                              "name": "ยางอินเดีย",
                              "image": "https://firebasestorage.googleapis.com/v0/b/plant-dc91f.appspot.com/o/rubberplanticon.png?alt=media&token=fcb7ee02-4648-4ed7-98f1-e48a36ad0aae",
                            });
                    },
        
                  ),
            
          
            ),
              Positioned(
              top: 320,
              left: 35,
              child: Text(
                      "มอนสเตอร่า",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 15.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 320,
              left: 170,
              child: Text(
                      "เฟิร์น",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 15.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 320,
              left: 270,
              child: Text(
                      "ไม้อวบน้ำ",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 15.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 470,
              left: 35,
              child: Text(
                      "ดอกเดหลี",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 15.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 470,
              left: 150,
              child: Text(
                      "หูมิกกี้เม้าส์",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 15.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 470,
              left: 285,
              child: Text(
                      "ทิวลิป",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 15.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 635,
              left: 20,
              child: Text(
                      "เศรษฐีเรือนนอก",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 15.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
             Positioned(
              top: 635,
              left: 160,
              child: Text(
                      "ลิ้นมังกร",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 15.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            Positioned(
              top: 635,
              left: 270,
              child: Text(
                      "ยางอินเดีย",
                      style: TextStyle(
                        color: Color(0xff4E514A),
                        fontSize: 15.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
            ),
            
            
            
                    
            
            
        ],
        


      )
    );
  }
  
}