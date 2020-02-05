import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  NextPage({Key key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTERATION'),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Bank Details",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: 300,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            width: 200,
                            child: TextField(
                              decoration:
                                  InputDecoration(hintText: "Enter account no"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Confirm account no"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            width: 200,
                            child: TextField(
                              decoration:
                                  InputDecoration(hintText: "IFSC code"),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            width: 200,
                            child: TextField(
                              decoration:
                                  InputDecoration(hintText: "Bank Name"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: MaterialButton(
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.indigoAccent,
                    onPressed: () {
                      showGeneralDialog(
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionBuilder: (context, a1, a2, widget) {
                            final curvedValue =
                                Curves.easeInOutBack.transform(a1.value) - 1.0;
                            return Transform(
                              transform: Matrix4.translationValues(
                                  0.0, curvedValue * 200, 0.0),
                              child: Opacity(
                                opacity: a1.value,
                                child: AlertDialog(
                                  shape: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  content: Text(
                                      'Thank you for registering with us  we will reach you soon....!!!'),
                                ),
                              ),
                            );
                          },
                          transitionDuration: Duration(milliseconds: 200),
                          barrierDismissible: true,
                          barrierLabel: '',
                          context: context,
                          pageBuilder: (context, Nda1, Nda2) {});
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
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
