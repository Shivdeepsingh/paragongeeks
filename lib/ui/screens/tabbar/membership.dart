import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/modals/appstate.dart';
import 'package:paragon_greeks/ui/screens/membership/plans.dart';
import 'package:provider/provider.dart';

class MemberShipScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MemberShipScreenState();
  }
}

class MemberShipScreenState extends State<MemberShipScreen> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Membership",
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        backgroundColor: Colors.white38,
        elevation: 0,
        leading: appState.switchScreen.switchMembership.isNotEmpty
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  appState.switchScreen.addSwitchMemberShip("");
                  setState(() {});
                },
              )
            : Container(),
      ),
      body: _screen(appState),
    );
  }

  Widget _screen(AppState appState) {
    if (appState.switchScreen.switchMembership == "Member") {
      return Plans();
    }

    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: Color(0xffeeeef6),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10),
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Protect home with Paragon Geek",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xff52c8fa)),
                      ),
                      width: 200,
                      margin: EdgeInsets.only(left: 30, top: 30),
                    ),
                    GestureDetector(
                      onTap: () {
                        appState.switchScreen.addSwitchMemberShip("Member");
                        setState(() {});
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        margin: EdgeInsets.only(
                            left: 10, right: 30, top: 50.0, bottom: 20),
                        child: Card(
                          color: Colors.black,
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
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(25)),
                            child: Text(
                              "See Plans",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Color(0xff52c8fa)),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // width: 200,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Some Paragon Geek benefits include:",
                  style: TextStyle(
                      color: Color(0xff52c8fa),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.security,
                        color: Colors.black26,
                        size: 35,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Extended Servvice gurantee",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Container(
                              child: Text(
                                "You're fully covered  with our 365-day extended service gurantee on all Paragon geek services",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.security,
                        color: Colors.black26,
                        size: 35,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Free home check-up",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Our tech will perform a 16-point inspection to make sure your home and appliances are in working order",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.security,
                        color: Colors.black26,
                        size: 35,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Access to DIY portal & content",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Container(
                              child: Text(
                                "Check out our latest DIY content, step-by-step guides, & our best tips online",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.security,
                        color: Colors.black26,
                        size: 35,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Priority Booking",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Container(
                              child: Text(
                                "We'll make sure your appointment is prioritized with our best technicians",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.security,
                        color: Colors.black26,
                        size: 35,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "Same-day preference",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Container(
                              child: Text(
                                "We'll fix the problem, fast! Book any in-home service for as early as the same-day",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Icon(
                        Icons.security,
                        color: Colors.black26,
                        size: 35,
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "24/7 support",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            Container(
                              child: Text(
                                "We're here for you 7 days a week, 24 hours a day",
                                style: TextStyle(
                                    color: Colors.black45, fontSize: 15),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  appState.switchScreen.addSwitchMemberShip("Member");
                  setState(() {});
                },
                child: Container(
                  height: 50,
                  width: 150,
                  margin: EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 50.0, bottom: 20),
                  child: Card(
                    color: Colors.black,
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
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        "See Plans",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color(0xff52c8fa)),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 100),
                child: Text(
                  "Terms of use",
                  style: TextStyle(fontSize: 15, color: Colors.black45),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
