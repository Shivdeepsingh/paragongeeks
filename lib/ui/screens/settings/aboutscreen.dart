import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutScreenState();
  }
}

class AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              // appState.switchScreen.addScreen("Profile");
              // appState.notifyChange();
              // setState(() {});
              //  Navigator.pushNamed(context, '/myProfile');
            },
            child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(fontSize: 17, letterSpacing: 1.0),
                      ),
                    ),
                    Container(
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.black,
                      ),
                    )
                  ],
                )),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
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
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Version",
                      style: TextStyle(fontSize: 17, letterSpacing: 1.0),
                    ),
                  ),
                  Container(
                    child: Text(
                      "1.0.0 (74)",
                      style: TextStyle(color: Colors.black45),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            color: Colors.black12,
            width: MediaQuery.of(context).size.width,
            height: 1,
          ),
        ],
      ),
    );
  }
}
