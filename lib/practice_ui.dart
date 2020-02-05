import 'package:flutter/material.dart';
class Something extends StatefulWidget {
  Something({Key key}) : super(key: key);

  @override
  _SomethingState createState() => _SomethingState();
}

class _SomethingState extends State<Something> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
      title: Text("Something"),
      centerTitle: true,
      
       ),
      body: SingleChildScrollView(
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Text(
        'Horizental scrollview',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(
        height: 200.0,
       
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) => Container(
            width: 300,
                      child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),   
              ),
                  child: Center(child: Text('Nagesh Adhav')),
                ),
          ),
        ),
      ),
      Text(
        'vertical Scrollview',
        style: TextStyle(fontSize: 18),
      ),
      Card(
        shape: RoundedRectangleBorder(
borderRadius:BorderRadius.circular(15)
),
        child:Container(
          height: 200,
          width: 400,
          
        ) 
      ),
      Card(
        child:Container(
          height: 200,
          width: 400,
        
        )
      ),
      Card(
        child:Container(
          height: 200,
          width: 400,
          
        )
      ),
      Card(
        child: Container(
          height: 200,
          width: 400,
          
        )
      ),
      Card(
        child: Container(
        
          height: 200,
          width: 400,
        )
      ),
    ],
  ),

),

    );
  }
}