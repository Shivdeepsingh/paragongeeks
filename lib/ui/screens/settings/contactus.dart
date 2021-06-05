import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactUsState();
  }
}

class ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // appState.switchScreen.addScreen("About");
              // appState.notifyChange();
              // setState(() {});
            },
            child: Container(
              margin: EdgeInsets.only(top: 30, bottom: 10, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.call,
                      color: Colors.black26,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "(123) 456-7890",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 10),
            color: Colors.black12,
            width: MediaQuery.of(context).size.width,
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              // appState.switchScreen.addScreen("About");
              // appState.notifyChange();
              // setState(() {});
            },
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 10, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Icon(
                      Icons.mail_outline,
                      color: Colors.black26,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Support@paragongeek.com",
                      style: TextStyle(color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 10),
            color: Colors.black12,
            width: MediaQuery.of(context).size.width,
            height: 1,
          ),
        ],
      ),
    );
  }
}
