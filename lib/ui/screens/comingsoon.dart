import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ComingSoonState();
  }
}

class ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "Coming Soon",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
