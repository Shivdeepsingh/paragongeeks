import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/modals/appstate.dart';
import 'package:paragon_greeks/ui/screens/settings/aboutscreen.dart';
import 'package:paragon_greeks/ui/screens/settings/changepassword.dart';
import 'package:paragon_greeks/ui/screens/settings/contactus.dart';
import 'package:paragon_greeks/ui/screens/settings/myprofile.dart';
import 'package:paragon_greeks/ui/screens/settings/services.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SettingsScreenState();
  }
}

class SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    // TODO: implement build
    return Scaffold(
      appBar: appBarText(appState),
      body: SafeArea(
        child: SingleChildScrollView(
          child: screens(appState),
        ),
      ),
    );
  }

  Widget screens(AppState appState) {
    if (appState.switchScreen.screen == "Profile") {
      return MyProfile();
    }

    if (appState.switchScreen.screen == "ChangePassword") {
      return ResetPassword();
    }

    if (appState.switchScreen.screen == "About") {
      return AboutScreen();
    }

    if (appState.switchScreen.screen == "Contact") {
      return ContactUs();
    }

    if (appState.switchScreen.screen == "services") {
      return Services();
    }



    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              appState.switchScreen.addScreen("Profile");
              appState.notifyChange();
              setState(() {});
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
                        "My profile",
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
              appState.switchScreen.addScreen("ChangePassword");
              appState.notifyChange();
              setState(() {});
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
                        "Change Password",
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
              appState.switchScreen.addScreen("services");
              appState.notifyChange();
              setState(() {});
              //  Navigator.pushNamed(context, '/contactUs');
            },
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "My Services",
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
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            color: Colors.black12,
            width: MediaQuery.of(context).size.width,
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              appState.switchScreen.addScreen("About");
              appState.notifyChange();
              setState(() {});
            },
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "About",
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
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            color: Colors.black12,
            width: MediaQuery.of(context).size.width,
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              appState.switchScreen.addScreen("Contact");
              appState.notifyChange();
              setState(() {});
              //  Navigator.pushNamed(context, '/contactUs');
            },
            child: Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Contact us",
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
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            color: Colors.black12,
            width: MediaQuery.of(context).size.width,
            height: 1,
          ),
          GestureDetector(
            onTap: () {
              //     Navigator.pushNamed(context, '/createAccount');
            },
            child: Container(
              height: 50,
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(left: 80, right: 80, top: 150.0),
              child: Card(
                color: Colors.white,
                elevation: 5,
                shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Container(
                  alignment: Alignment.center,

                  //  margin: EdgeInsets.only(left: 30, right: 30, top: 50),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    "Log Out",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget appBarText(AppState appState) {
    if (appState.switchScreen.screen == "Profile") {
      return AppBar(
        title: Text(
          "My Profile",
          style:
              TextStyle(color: Colors.black, fontSize: 17, letterSpacing: 1.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: appState.switchScreen.screen.isNotEmpty
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  appState.switchScreen.addScreen("");
                  setState(() {});
                },
              )
            : Container(),
      );
    }

    if (appState.switchScreen.screen == "About") {
      return AppBar(
        title: Text(
          "About Us",
          style:
              TextStyle(color: Colors.black, fontSize: 17, letterSpacing: 1.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: appState.switchScreen.screen.isNotEmpty
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  appState.switchScreen.addScreen("");
                  setState(() {});
                },
              )
            : Container(),
      );
    }

    if (appState.switchScreen.screen == "Contact") {
      return AppBar(
        title: Text(
          "Contact Us",
          style:
              TextStyle(color: Colors.black, fontSize: 17, letterSpacing: 1.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: appState.switchScreen.screen.isNotEmpty
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  appState.switchScreen.addScreen("");
                  setState(() {});
                },
              )
            : Container(),
      );
    }

    if (appState.switchScreen.screen == "services") {
      return AppBar(
        title: Text(
          "My Services",
          style:
              TextStyle(color: Colors.black, fontSize: 17, letterSpacing: 1.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: appState.switchScreen.screen.isNotEmpty
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  appState.switchScreen.addScreen("");
                  setState(() {});
                },
              )
            : Container(),
      );
    }

    return AppBar(
      title: Text(
        "abc",
        style: TextStyle(color: Colors.black, fontSize: 17, letterSpacing: 1.0),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: appState.switchScreen.screen.isNotEmpty
          ? IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                appState.switchScreen.addScreen("");
                setState(() {});
              },
            )
          : Container(),
    );
  }
}
