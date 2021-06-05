import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../modals/appstate.dart';
import 'verifyemail.dart';
import 'tabbar/tabscreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  Future<Null> checkIsLogin() async {
    String email = "";
    String token = "";
    String fName ="";
    String lName ="";
    int userId;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    email = prefs.getString("email");
    token = prefs.getString("token");
    userId = prefs.getInt("userId");
    lName = prefs.getString("lastName");
    fName = prefs.getString("name");

    final appState = Provider.of<AppState>(context, listen: false);
    print(email);
    print(token);
    print(userId);
    print("data user");
    if (token != "" && token != null) {
      print("already login.");
      appState.user.addToken(token);
      appState.user.addUserId(userId);

      appState.user.addLName(lName);
      appState.user.addFName(fName);
      appState.user.addEmail(email);


      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => new TabScreen()),
      );
    } else {
      //replace it with the login page

      // appState.register.addScreen("info");
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => Info()),
      // );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => VerifyEmail()),
      );
    }
  }

  void navigationPage() {
    // _getCat();
    checkIsLogin();
    // Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 400,
          height: 400,

          color: Colors.black,
          child: Image.asset("assets/logo.jpg"),
        ),
      )
    );
  }
}
