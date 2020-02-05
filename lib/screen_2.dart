import 'package:flutter/material.dart';
import 'package:hap_agency_screen/nextpage.dart';

class Registar extends StatefulWidget {
  Registar({Key key}) : super(key: key);

  @override
  _RegistarState createState() => _RegistarState();
}

class _RegistarState extends State<Registar> {
  final _formKey = GlobalKey<FormState>();
  var _value="1";
  DropdownButton _normal2Down() => DropdownButton<String>(
        items: [
          DropdownMenuItem<String>(
            value: "1",
            child: Text(
              "First",
            ),
          ),
          DropdownMenuItem<String>(
            value: "2",
            child: Text(
              "Second",
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        value: _value,
        elevation: 2,
        style: TextStyle(color: Colors.red, fontSize: 30),
        isDense: true,
        iconSize: 40.0,
      );
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("REGISTRATION"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: 300,
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter Name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: 'Ravi',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: 300,
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter Mobile';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: 'Mobile',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    width: 300,
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter Email';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30))),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10),
              Container(
                width: 300,

                // alignment: Alignment.topRight,
                child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        border: Border.all(
                          color: Color(0xffD50000),
                          width: 2,
                        )),
                    child: _normal2Down()),
              ),
              SizedBox(height: 100),

              //    Padding(
              //    padding: const EdgeInsets.all(8.0),
              //    child: Center(
              //      child: Container(
              //         width: 300,
              //       decoration: BoxDecoration(
              //          borderRadius: BorderRadius.circular(15.0),
              // border: Border.all(
              //     color: Colors.red, style: BorderStyle.solid, width: 0.80),
              //       ),
              //       child: DropdownButton(
              //         items: _dropdownValues.map((value)=>DropdownMenuItem(
              //            child: Text(value),
              //           value: value,
              //         )
              //         ).toList(),
              //         onChanged: (String value){},
              //         isExpanded: false,
              //         value: _dropdownValues.first,
              //       ),
              //      ),
              //    ),
              //  ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => NextPage()),
                      // );
                    } else {
                      Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('please fill the proper details')));
                    }
                  },
                  color: Colors.indigoAccent,
                  child: Text("Next", style: TextStyle(color: Colors.white)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
