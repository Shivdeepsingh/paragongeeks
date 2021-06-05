import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../orderscreen.dart';
import 'counter.dart';

class TeleDisplay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TeleDisplayState();
  }
}

class TeleDisplayState extends State<TeleDisplay> {
  @override
  Widget build(BuildContext context) {
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
                                  "https://www.clipartkey.com/mpngs/m/128-1280250_television-png-image-samsung-led-tv-40-inch.png"),
                              width: 60,
                              height: 60,
                              margin: EdgeInsets.only(left: 20, top: 10),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    "TV Mounting",
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
