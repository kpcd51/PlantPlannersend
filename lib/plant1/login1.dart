import 'package:flutter/material.dart';
import 'package:helloworld/plant1/menu.dart';
import 'package:helloworld/plant1/mystyle.dart';
import 'package:helloworld/plant1/login1.dart';
import 'package:helloworld/plant1/register.dart';
import 'package:helloworld/plant1/register2.dart';
bool _value=false;
class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        
      backgroundColor: Color(0xffD2DBC8),
      appBar: AppBar(
        backgroundColor: Color(0xff998476),
        leading:IconButton(
        onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => Menu()));}
        ,
      
      icon: Icon(
            Icons.arrow_back,
            color: Color(0xff623B28), 
          ),
          ),
      ),
      body: Column(
        children: <Widget>[
          
          
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
            child: Column(children: <Widget>[
              
            Positioned(
              right: 100,
              top: 50,
             
      child:Image.asset("image/icon.png",
          width: 200,height: 200,),
            ),
           SizedBox(height: 10),
           
          /*Image.asset("image/icon.png",
          width: ,height: 10,),*/
          
              Text("Log In",
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xff623B28),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
              
          
            ]),
          ),
          /*Padding(
            padding: const EdgeInsets.all(20.0),
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
                hintText: "Optional Group Special Code",
              ),
            ),
          ),*/
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
                hintText: "Username",
              ),
            ),
          ),
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
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: <Widget>[
                Checkbox(
                  checkColor: Color(0xFFFFFFFF),
                  activeColor: Color(0xAA333345),
                  onChanged: (bool value) {
                    setState(() {
                      _value = value;
                    });
                  },
                  value: _value
                  
                ),
                Text("Stay Logged In",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff623B28),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
                
               /* Padding(
                  padding: const EdgeInsets.only(left: 55),
                  child: new GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/UserPage");
                    },
                    child: new Text("Forgotten password?",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff623B28),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
                  ),
                ),*/
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: MaterialButton(
                height: 56,
                //minWidth: double.infinity,
                minWidth: 150,
                color: Color(0xffEBC7B9),
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                      onPressed: () { 
              showDialog(context: context, builder: (context){
                      Future.delayed(Duration(seconds: 2), () {
                          Navigator.of(context).pop(MaterialPageRoute(builder: (context)=>Menu()) );
                        });
                        return AlertDialog(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15.0))),
                            backgroundColor: Color(0xffF7E5CD),
                            title: Icon(Icons.account_circle,
                                  color: Color(0xff623B28),
                                  size: 95.0,
                                  ),
                            content: Text("     Welcome Back  ",
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
                
                child: Text("Sign in",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff623B28),
                  fontFamily: "RobotoMono",
                  fontWeight: FontWeight.bold,
                ),
              ),
            
              )),
              SizedBox(height: 30),
              

               Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: new GestureDetector(
                    onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => Register2()));},
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
              ],
            
          

              
        
        
      ),
      
    );
  }
  
}