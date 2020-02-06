import 'package:flutter/material.dart';
class ForgetPassword extends StatefulWidget {
  ForgetPassword({Key key}) : super(key: key);

  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FORGET PASSWORD"),
        centerTitle: true,
      ),  
      body: SingleChildScrollView(
       
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Container(
            height: 400,
            child: Column(
children: <Widget>[
    Container(
                      
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "Email or Phone ...",
                          ),
                        ),
                      ),
                         SizedBox(height: 50),
                      Container(
                        
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "create new Password ...",
                            
                          ),
                        ),
                      ),
                        SizedBox(height: 50),
                      Container(
                        
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                            
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            hintText: "confirm new Password ...",
                            
                          ),
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)
                            ),
                            color: Colors.cyan,
                            onPressed:(){
                              print("password changed successfully");
                                Navigator.of(context).pushNamed('/login');
                            },child: Text("Submit"),),
                        ),
                      )
],
              
            ),
          ),
        ),
      ),
    );
  }
}