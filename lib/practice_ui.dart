import 'package:flutter/material.dart';
import 'package:vector_math/vector_math.dart' as math;
class Something extends StatefulWidget {
  Something({Key key}) : super(key: key);

  @override
  _SomethingState createState() => _SomethingState();
}

class _SomethingState extends State<Something> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
       appBar: PreferredSize(
         
                child: AppBar(
                  leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed:(){
                    buildShowGeneralDialog(context);
                   
                  }),
                  actions: <Widget>[
                  IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: (){
                      Navigator.of(context).pushNamed('/login');
                   })
                  ],
                 
      title: Text("Something"),
      centerTitle: true,
      
         ), preferredSize: Size.fromHeight(100),
       ),
      body: SingleChildScrollView(
  child: Container(
     decoration: new BoxDecoration(
            gradient: new LinearGradient(colors: [const Color(0xFF915FB5),const Color(0xFFCA436B)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
            ),
     ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Horizental scrollview',
          style: TextStyle(fontSize: 18,color: Colors.white)
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
          style: TextStyle(fontSize: 18,color: Colors.white),
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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child:Container(
            height: 200,
            width: 400,
          
          )
        ),
        Card(
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
          ),
          child:Container(
            height: 200,
            width: 400,
            
          )
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Container(
            height: 200,
            width: 400,
            
          )
        ),
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          child: Container(
          
            height: 200,
            width: 400,
          )
        ),
      ],
    ),
  ),

),

    );
    

  }

  Future buildShowGeneralDialog(BuildContext context) {
    return showGeneralDialog(
  context: context,
  pageBuilder: (context, Nda1, Nda2) {},
  barrierDismissible: true,
  barrierColor: Colors.black.withOpacity(0.4),
  barrierLabel: '',
  transitionBuilder: (context, anim1, anim2, child) {
    return Transform.rotate(
      angle: math.radians(anim1.value * 360),
      child: AlertDialog(
        shape:
            OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
        title: Center(child: Text('NIKAL BAHAR!!')),
        content: Text("KHRACH KA BHAVA BAND KARYACHA AHE KA TULA"),
        actions: <Widget>[
          FlatButton(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.blue,
            onPressed: (){
               Navigator.of(context).pushNamed('/frontscreen');
            }, child: Text("HO")),
          FlatButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
            ),
            onPressed: (){
            
 
            }, child: Text("NAHI"))
        ],
      ),
    );
  },
  transitionDuration: Duration(milliseconds: 300));
  }
  
}