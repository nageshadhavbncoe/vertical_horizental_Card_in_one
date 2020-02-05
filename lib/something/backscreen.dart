import 'package:flutter/material.dart';
class BackScreen extends StatefulWidget {
  BackScreen({Key key}) : super(key: key);

  @override
  _BackScreenState createState() => _BackScreenState();
}

class _BackScreenState extends State<BackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Text(
          "something happen in a back"
        )
      ),
    );
  }
}