import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:helloworld/plant1/register3.dart';
import 'menu.dart';

class Login2 extends StatefulWidget {
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  bool check = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        backgroundColor: Color(0xffD2DBC8),
        body:Form(
        key: _formkey,
        child:Stack(children: [
          Container(
              //height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 50.0,
                  ),
                  child: Column(children: <Widget>[
                    

                    Text(
                      "Log In",
                      style: TextStyle(
                        color: Color(0xff623B28),
                        fontSize: 45.0,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    SizedBox(
                      height: 30.0,
                    ),
                    Container(
                        height: 190.0, child: Image.asset("image/icon.png")),
                        SizedBox(height: 20.0),
                    Center(
                      child: Container(
                        
                          
                          child: ListTile(
                            title: TextFormField(
                              
                              controller: _emailController,
                              
                              decoration: new InputDecoration(
                                //fillColor: Colors.white,
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Colors.brown, width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Colors.brown, width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "Username",
              ),
              validator: (String input){

                               if(input.isEmpty){

                                return "Enter Email";
                              }
                                return null;
                              }
            ),
                               
                            ),
                          )
                          ),
                    

                    SizedBox(height: 30.0),
                    Center(
                      child: Container(
                        
                          
                          child: ListTile(
                            title: TextFormField(
                              
                              controller: _passwordController,
                              
                              decoration: new InputDecoration(
                                //fillColor: Colors.white,
                focusedBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Colors.brown, width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                enabledBorder: new OutlineInputBorder(
                  borderSide:
                      new BorderSide(color: Colors.brown, width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                filled: true,
                hintStyle: new TextStyle(color: Color(0x75000000)),
                hintText: "password",
              ),
                              validator: (String val){
                                if(val.isEmpty){
                                return("Enter password");
                              }
                                return null;
                              }
                            ),
                          )
                          ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Checkbox(
                              activeColor: Colors.grey,
                              value: check,
                              onChanged: (bool value) {
                                setState(() {
                                  check = value;
                                });
                              },
                            ),
                            Text(
                              'stayed login',
                              style: TextStyle(
                                  color: Color(0xff623B28),
                                  fontFamily: "Roboto",
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 40.0),
                            /*GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPassword()));
                                },*/
                                 /*Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      color: Color(0xff623B28),
                                      fontFamily: "Roboto",
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                ),*/
                          ]),
                    ),
                    
                    
                    Container(
                      width: 150.0,
                      height: 56.0,
                      
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Color(0xff623B28))),
                            color: Color(0xffEBC7B9),
                            textColor: Colors.white,
                            child: Text("Sign in",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff623B28),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),),
                            onPressed: () async {
                          if(_formkey.currentState.validate()) {
                            _signinWithEmailPassword();
                          }
                          
                        },
                        
                      ),
                    ),
                    /*SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                          height: 3.0, width: 450.0, color: Color(0xff623B28)),
                    ),*/
                    SizedBox(height: 10.0),
                    /*Text(
                      "OR",
                      style: TextStyle(
                          color: Color(0xff623B28),
                          fontFamily: "Roboto",
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),*/
                    SizedBox(height: 10.0),
                    Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: new GestureDetector(
                    onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Register3()));},
                    child: new Text("Don't have account?  Register",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff623B28),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                  
                ),
                
              ),
                  ),
                ),
                  /*  Container(
                        height: 60.0,
                        padding: EdgeInsets.fromLTRB(55.0, 0.0, 0.0, 0.0),
                        child: Row(
                          children: <Widget>[
                             Image.asset("images/facebook_brown.png"),
                            SizedBox(width: 82.0),
                            GestureDetector(
                             child:Image.asset("images/google.png"),
                             onTap: () {
                               _signinWithGoogle();
                             },
                            )
                          ],
                        )),*/
                    
                    
                  ]
                  )
                  )
                  )
        ])));
  }

  void _signinWithEmailPassword() async {
    try {
      final User user = (await _auth.signInWithEmailAndPassword(
        email: _emailController.text, 
        password: _passwordController.text)).user;
        if (!user.emailVerified) {
          await user.sendEmailVerification();
        }
        Navigator.of(context).push(MaterialPageRoute(builder: (_){
          return Menu(user: user);
        }));
    } catch (e) {
      _scaffoldkey.currentState.showSnackBar(SnackBar(
        content: Text("Failed to sign in with email or password"),
      ));
      print(e);
    }
  }
  
  
  
}
