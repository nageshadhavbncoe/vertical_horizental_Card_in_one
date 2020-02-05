import 'package:flutter/material.dart';
class Settlement extends StatefulWidget {
  @override
  SettlementState createState() => SettlementState();
}

class SettlementState extends State<Settlement> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text('SETTLEMENT'),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          IconButton(icon: 
          Icon(Icons.search),
          onPressed: (){}
          ,)
        ],
      ),
      body: new ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          return Container(
            height: 130,
            width: 200,
            child: Card(
//                color: Colors.blue,
              elevation: 10,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(14.0),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: Column(
                        children: <Widget>[
                          Text("Nagesh",style:TextStyle(
                            color: Colors.red,fontSize: 25,
                          )),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text("No of rides : 10",style: TextStyle(
                              color: Colors.blueAccent,fontSize: 15
                            ),),
                          ),
                        ],
                      ),
                    
                    ),
                  ),
                
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}