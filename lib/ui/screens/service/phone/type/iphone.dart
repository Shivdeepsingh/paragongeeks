import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/ui/screens/service/tvmounting/findtech.dart';

class IPhone extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IPhoneState();
  }
}

class IPhoneState extends State<IPhone> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white38,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
            // appState.switchScreen.addScreen("");
            //
            //etState(() {});
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  child: Text(
                    "paragon Geek",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Select your iphone device model",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 50),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '11 ',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '11 proband',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '11 pro max',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FindTech("iphone")),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'XS Max',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FindTech("iphone")),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'XR',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FindTech("iphone")),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    width: MediaQuery.of(context).size.width,
                    child: Card(
                      elevation: 5,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'XS',
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'X',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '8 plus',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '8',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '7 Plus',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '7',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '6s Plus',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '6s',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '6 Plus',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FindTech("iphone")),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            '6',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
