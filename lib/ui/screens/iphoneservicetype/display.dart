import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paragon_greeks/modals/appstate.dart';
import 'package:provider/provider.dart';

import '../orderscreen.dart';
import 'counter.dart';

class IphoneDisplay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return IphoneDisplayState();
  }
}

class IphoneDisplayState extends State<IphoneDisplay> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context, listen: false);
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Orders()),
            );
          },
          child: Container(
            height: 50,
            color: Colors.white,
            child: Card(
              elevation: 5,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.white,
                          size: 35,
                        ),
                        margin: EdgeInsets.only(left: 20),
                      ),
                      Container(
                        child: Text(
                          "Cart",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        margin: EdgeInsets.only(left: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          r"$49",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        margin: EdgeInsets.only(right: 0.0),
                      ),
                      Container(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 30,
                        ),
                        margin: EdgeInsets.only(left: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        "Select Type",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      margin: EdgeInsets.only(top: 20, bottom: 20),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Image.network(
                                  "https://www.pngitem.com/pimgs/m/41-414190_phone-screen-png-iphone-6-transparent-png.png"),
                              width: 70,
                              height: 70,
                              margin: EdgeInsets.only(left: 20, top: 10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "No Display",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    r"$49",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: CountButtonView(
                            initialCount: 0,
                            onChange: (count) {
                              print(count);
                            },
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Image.network(
                                  "https://www.pngitem.com/pimgs/m/41-414190_phone-screen-png-iphone-6-transparent-png.png"),
                              width: 70,
                              height: 70,
                              margin: EdgeInsets.only(left: 20, top: 10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Half Display",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    r"$49",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: CountButtonView(
                            initialCount: 0,
                            onChange: (count) {},
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Image.network(
                                  "https://www.pngitem.com/pimgs/m/41-414190_phone-screen-png-iphone-6-transparent-png.png"),
                              width: 70,
                              height: 70,
                              margin: EdgeInsets.only(left: 20, top: 10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 120,
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Vertical/ Horizontal Lines",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    "399",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: CountButtonView(
                            initialCount: 0,
                            onChange: (count) {},
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Image.network(
                                  "https://www.pngitem.com/pimgs/m/41-414190_phone-screen-png-iphone-6-transparent-png.png"),
                              width: 70,
                              height: 70,
                              margin: EdgeInsets.only(left: 20, top: 10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Colour Issue",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    r"$49",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: CountButtonView(
                            initialCount: 0,
                            onChange: (count) {},
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              child: Image.network(
                                  "https://www.pngitem.com/pimgs/m/41-414190_phone-screen-png-iphone-6-transparent-png.png"),
                              width: 70,
                              height: 70,
                              margin: EdgeInsets.only(left: 20, top: 10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "Blur/ Double Image",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 5),
                                  child: Text(
                                    r"$49",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          child: CountButtonView(
                            initialCount: 0,
                            onChange: (count) {},
                          ),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
