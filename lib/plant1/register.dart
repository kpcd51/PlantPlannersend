import 'package:flutter/material.dart';
import 'package:helloworld/plant1/login1.dart';
import 'package:firebase_auth/firebase_auth.dart';
bool _value = false;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD2DBC8),
      appBar: AppBar(
        backgroundColor: Color(0xff998476),
        leading:IconButton(
        onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Login1()));}
        ,
      
      icon: Icon(
            Icons.arrow_back,
            color: Color(0xff623B28), 
          ),
          ),
      ),
      
      body: Column(
        children: <Widget>[
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Row(children: <Widget>[
              Text("            Sign up ",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff623B28),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
             
              
            ]),
          ),
          SizedBox(height: 20),
          Positioned(
              right: 30,
              top: 100,
             
      child:Image.asset("image/register.png",
          width: 250,height: 150,),
            ),
          Padding(
            
            padding: const EdgeInsets.all(20.0),
            
            child: TextField(
              
              obscureText: false,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff623B28), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff623B28), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "First & Last Name",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: false,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff623B28), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff623B28), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "Email",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: false,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff623B28), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff623B28), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "Mobile Phone",
              ),
            ),
          ),
          /*Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: false,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xFF5ABD8C), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0x80EFEFEF), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "Group Special Code (optional)",
              ),
            ),
          ),*/
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              obscureText: true,
              decoration: new InputDecoration(
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff623B28), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Color(0xff623B28), width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: <Widget>[
                /*Checkbox(
                  checkColor: Color(0xFFFFFFFF),
                  activeColor: Color(0xAAFF7579),
                  onChanged: (bool value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  value: _value,
                ),
                Text(
                  "Please sign me up for the monthly newsletter.",
                  style: TextStyle(
                      color: Color(0x50212121), fontWeight: FontWeight.w300),
                ),*/
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                height: 56,
                minWidth: 150,
                color: Color(0xffEBC7B9),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                 onPressed: () { 
              showDialog(context: context, builder: (context){
                      Future.delayed(Duration(seconds: 2), () {
                          Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Login1()) );
                        });
                        return AlertDialog(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            backgroundColor: Color(0xffF7E5CD),
                            title: Icon(Icons.check,
                                  color: Color(0xff623B28),
                                  size: 95.0,
                                  ),
                            content: Text(" Register complete  ",
                                style: TextStyle(
                                  color: Color(0xff623B28),
                                  fontFamily: "Roboto",
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold,
                                ),                            
                            ),
                            
                        );
                      });

          },
                child: Text(" Sign up",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff623B28),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
              )),
      
        ],
      
      ),
    
    );
  }
  
}