import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
       body: SingleChildScrollView(
                child: Center(
           child:Column(
             children: <Widget>[
               Padding(
                 padding: const EdgeInsets.only(top: 100),
                 child: Center(
                   child: Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20),
                     ),
                                      child: Container(
                      
                       height: 600,
                       width: 500,
                       child: Column(
                         children: <Widget>[
                 
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
                        hintText: "Password ...",
                        
                      ),
                    ),
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                    ),
                    child: Text("submit"),
                    onPressed:(){})
                  
                         ],
                       ),
                     ),
                   ),
                 ),
               )
             ],
           )
         ),
       ), 
    );
  }
}