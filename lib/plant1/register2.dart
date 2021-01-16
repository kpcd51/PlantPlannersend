

import 'package:flutter/material.dart';
import 'package:helloworld/plant1/login1.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:helloworld/plant1/register3.dart';
import 'package:helloworld/plant1/menu.dart';
//bool _value = false;

class Register2 extends StatefulWidget {
  @override
  _Register2State createState() => _Register2State();
  
}

class _Register2State extends State<Register2> {
  @override


  /*void myAlert(String title,String message){
    showDialog(context: context,builder: (BuildContextcontext){
      return AlertDialog(title: ListTile(leading: Icon(Icons.add_alert,color: Colors.red,
      ),title: Text(title,style: TextStyle(
                                    color: Colors.red,
                                    fontFamily: "Roboto",
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                                   ),
      ),content: Text(message),actions: <Widget>[FlatButton(child: Text('OK'),
      onPressed: (){Navigator.of(context).pop();},)],
      );
    });
  }*/
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
      
      body:
      Form (key: formKey,
              child: ListView(
          padding: const EdgeInsets.all(30.0),
         children: <Widget>[
     
             
            
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Row(children: <Widget>[
                Text("        Sign up ",
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
             Container(
                
                height: 160,
                
               
                child: Image.asset(
                  "image/register.png",
                 // fit: BoxFit.cover,
                  width: 300,
                  height: 300,
                ),
              
              ),
              SizedBox(height: 20),
              
              nametext(),
              SizedBox(height: 20),
              
              email(),
              SizedBox(height: 20),
              
              password(),
              SizedBox(height: 20),
             Padding(
                padding: const EdgeInsets.all(20),
                child: MaterialButton(
                  height: 56,
                  minWidth: 150,
                  color: Color(0xffEBC7B9),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                   onPressed: () { 
                     
                /*showDialog(context: context, builder: (context){
                        /*Future.delayed(Duration(seconds: 2), () {
                            Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Login1()) );
                          });*/
                    
                          return AlertDialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                              backgroundColor: Color(0xffF7E5CD),
                              title: Icon(Icons.check,
                                    color: Color(0xff623B28),
                                    size: 95.0,
                                    ),
                              content: Text(" Register complete. ",
                                  style: TextStyle(
                                    color: Color(0xff623B28),
                                    fontFamily: "Roboto",
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),                            
                              ),
                              
                              
                          );
                        });*/
                        if (formKey.currentState.validate()){
                          formKey.currentState.save();
                          print('name = $nameString,email = $emailString, password = $passwordString');
                          registerThread();
                        }

            },
                  child: Text(" Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xff623B28),
                    fontFamily: "RobotoMono",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ),
                ),
               
        
         ],
        ),
      ),
          
          
    );
  }
  Future <void> registerThread()async{
  Firebase.initializeApp();
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  await firebaseAuth.createUserWithEmailAndPassword(email: emailString, password: passwordString).then((response){
    print('Regiser success for Email = $emailString');
    setupDisplayName();
  }).catchError((response) {
    String title = response.code;
    String message = response.message;
    print('title = $title,message = $message');
     myAlert(title, message);
  });

   
  }
  Future<void> setupDisplayName() async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    var user = firebaseAuth.currentUser;
    if (user != null) {
      user.updateProfile(displayName: nameString);

      MaterialPageRoute materialPageRoute =
          MaterialPageRoute(builder: (BuildContext context) => Menu());
          
      Navigator.of(context).pushAndRemoveUntil(
          materialPageRoute, (Route<dynamic> route) => false);
    }
  }
  final formKey = GlobalKey<FormState>();
String nameString,emailString,passwordString;


Widget nametext (){
  
return TextFormField( style:TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontFamily: "RobotoMono",
                  
                ),
  decoration: InputDecoration(icon: Icon(Icons.face,color: Colors.blue,size: 35,),
  labelText: 'Name:',
  labelStyle:  TextStyle(
                  fontSize: 25,
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
  validator: (String value){
    if (value.isEmpty) {
      return 'Please fill yoyr name in the blank';
    } else {
      return null;
    }

  },
  onSaved: (String value){
    nameString = value.trim();
  },
  );
}
Widget email (){
return TextFormField( style:TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontFamily: "RobotoMono",
                  
                ),
  decoration: InputDecoration(icon: Icon(Icons.mail,color: Colors.brown,size: 35,),
  labelText: 'Email:',
  labelStyle:  TextStyle(
                  fontSize: 25,
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
   validator: (String value){
    if (!((value.contains('@')) && (value.contains('.')))) {
      return 'Please fill your email in yhe blank';
    } else {
      return null;
    }

  },
  onSaved: (String value){
    emailString = value.trim();
  },
  );
}
Widget password (){
return TextFormField( style:TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontFamily: "RobotoMono",
                  
                ),
  decoration: InputDecoration(icon: Icon(Icons.lock,color: Colors.purple,size: 35,),
  labelText: 'Password:',
  labelStyle:  TextStyle(
                  fontSize: 25,
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
     validator: (String value){
    if (value.length<6) {
      return 'Please fill your password more than 6 charactor.';
    } else {
      return null;
    }

  },
  onSaved: (String value){
    passwordString = value.trim();
  },
  );
}
  }