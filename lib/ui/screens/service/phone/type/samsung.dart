import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/ui/screens/service/tvmounting/findtech.dart';

class SamsungType extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SamsungTypeState();
  }
}

class SamsungTypeState extends State<SamsungType> {
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
                    "Select your Samsung device model",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FindTech("samsung")),
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
                          'Samsung Galaxy M31s',
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
                          builder: (context) => FindTech("samsung")),
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
                          'Samsung Galaxy M51',
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
                          builder: (context) => FindTech("samsung")),
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
                          'Samsung Galaxy M21',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M31',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M30s',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A51',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M11',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A50',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A71',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A21s',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A31',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A10',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M01',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M01 Core',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A50S',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A20',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M31s 8GB RAM',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy Note 20 Ultra 5G',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy S8',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy S10 Lite',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M20',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M31 8GB RAM',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A10s',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M10s',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M31 128GB',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy Note 20',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy Note 10 Lite',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M01s',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A70s',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M01 Core 32GB',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A80',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A70',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy S20 Plus',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M11 64GB',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M30',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A20s',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A30',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy J6 64GB',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A30s',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M40',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy S20',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy Note 10 Plus',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy M30s 128GB',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy Note 8',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A21s 6GB RAM',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy A51 8GB RAM',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy S9',
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
                            builder: (context) => FindTech("samsung")),
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
                            'Samsung Galaxy S9 Plus',
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
