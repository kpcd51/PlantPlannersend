import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/plant1/login2.dart';
import 'package:helloworld/plant1/menu.dart';
import 'package:helloworld/plant1/login2.dart';


class Register3 extends StatefulWidget {
  @override
  _Register3Stage createState() => _Register3Stage();
}

class _Register3Stage extends State<Register3> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _displayName = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmedpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffD2DBC8),
        appBar: AppBar(
        backgroundColor: Color(0xff998476),
        leading:IconButton(
        onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Login2()));}
        ,
      
      icon: Icon(
            Icons.arrow_back,
            color: Color(0xff623B28), 
          ),
          ),
      ),
        body: Form(
            key: _formkey,
            child: Stack(children: [
              Container(
                  height: double.infinity,
                  width: double.infinity,
                  child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40.0,
                        vertical: 30.0,
                      ),
                      child: Column(children: <Widget>[
                        Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color(0xff623B28),
                            fontSize: 45.0,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 40.0),
                        Container(
                            height: 100.0, child: Image.asset("image/register.png")),
                        SizedBox(
                          height: 1.0,
                        ),
                        Center(
                          child: Container(
                              width: 600.0,
                              /*decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[300],
                                        offset: Offset(2, 1),
                                        blurRadius: 5)
                                  ]),*/
                              child: ListTile(
                                title: TextFormField(
                                  controller: _displayName,
                                  decoration: InputDecoration(icon: Icon(Icons.face,color: Colors.blue,size: 25,),
  labelText: 'Name:',
  labelStyle:  TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                 fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
                helperText: 'Type your name.',
                helperStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.blue,
                 fontFamily: "RobotoMono",
                  
                ),
  ),
                                  validator: (String val) {
                                    if (val.isEmpty) {
                                      return "Please enter some text";
                                    }
                                    return null;
                                  },
                                ),
                              )),
                        ),
                        SizedBox(height: 15.0),
                        Center(
                          child: Container(
                              width: 600.0,
                             /* decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[300],
                                        offset: Offset(2, 1),
                                        blurRadius: 5)
                                  ]),*/
                              child: ListTile(
                                title: TextFormField(
                                  controller: _emailController,
                                 decoration: InputDecoration(icon: Icon(Icons.mail,color: Colors.brown,size: 25,),
  labelText: 'Email:',
  labelStyle:  TextStyle(
                  fontSize: 20,
                  color: Colors.brown,
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                  
                ),
                 helperText: 'Type your email.',
                helperStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.brown,
                 fontFamily: "RobotoMono",
                  
                ),
  ),
                                  validator: (String val) {
                                    if (val.isEmpty) {
                                      return "Please enter your email";
                                    }
                                    return null;
                                  },
                                ),
                              )),
                        ),
                        SizedBox(height: 15.0),
                        Center(
                          child: Container(
                              width: 600.0,
                              /*decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey[300],
                                        offset: Offset(2, 1),
                                        blurRadius: 5)
                                  ]),*/
                              child: ListTile(
                                title: TextFormField(
                                  controller: _passwordController,
                                  obscureText: true,
                                  decoration: InputDecoration(icon: Icon(Icons.lock,color: Colors.purple,size: 25,),
  labelText: 'Password:',
  labelStyle:  TextStyle(
                  fontSize: 20,
                  color: Colors.purple,
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
                 helperText: 'Type your password (more than 6 charactor).',
                helperStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.purple,
                 fontFamily: "RobotoMono",
                  
                ),
  ),
                                  validator: (String val) {
                                    if (val.isEmpty) {
                                      return "Please enter some text";
                                    }
                                    if(val.length < 8){
                                      return "weak-password";
                                    }
                                    return null;
                                  },
                                ),
                              )),
                        ),
                 /*       SizedBox(height: 30.0),
                    Center(
                      child: Container(
                          width: 600.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[300],
                                    offset: Offset(2, 1),
                                    blurRadius: 5)
                              ]),
                          child: ListTile(
                            title: TextFormField(
                              controller: _confirmedpasswordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Confirmed password",
                                  border: InputBorder.none),

                               validator: (String val) {
                                    if (val.isEmpty) {
                                      return "Please enter some text";
                                    }
                                    return null;
                                  },
                            ),
                          )),
                    ),*/
                        SizedBox(height: 30.0),
                        Container(
                          width: 300.0,
                          height: 40.0,
                          child: RaisedButton(
                            color: Color(0xff623B28),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                            onPressed: () async {
                              if (_formkey.currentState.validate()) {
                                _register();
                              }
                            },
                           
                            textColor: Colors.white,
                            child:
                                Text("Sign Up", style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        
                      ])))
            ])));
  }

  void _register() async {
    final User user = (await _auth.createUserWithEmailAndPassword(
            email: _emailController.text, password: _passwordController.text))
        .user;
    if (user != null) {
      if (!user.emailVerified) {
        await user.sendEmailVerification();
      }
      await user.updateProfile(displayName: _displayName.text);
      final user1 = _auth.currentUser;
      showDialog(
          context: context,
          builder: (context) {
            Future.delayed(Duration(seconds: 1), () {
              Navigator.of(context)
                  .pushReplacement(MaterialPageRoute(builder: (context) {
                return Login2();
              }));
            });

            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0))),
              title: Icon(
                Icons.check,
                color: Color(0xff623B28),
                size: 95.0,
              ),
              content: Text(
                "    Sign Up Complete  ",
                style: TextStyle(
                  color: Color(0xff623B28),
                  fontFamily: "Roboto",
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          });
    }
  }
}